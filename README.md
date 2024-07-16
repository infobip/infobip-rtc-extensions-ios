### Introduction

Infobip RTC extensions is an iOS library which provides extended functionality to Infobip RTC SDK.

Currently available functionalities are:

- video filter implementations

Here you will find an overview, and a quick guide on how to include and use these extensions in your application.
There is also in-depth reference documentation available.

## Getting the library

Please note that the library is currently only available on CocoaPods.

### CocoaPods

If you want to add it as a CocoaPods dependency, add the following to your `Podfile`:

```ruby
pod 'InfobipRTCExtensions'
```

To install newly added dependencies, simply run `pod install`.

### Using the Lib

Once the library is installed, it is available for use in your project as:

```swift
import InfobipRTCExtensions
```

## Video filters

The Infobip RTC supports user-defined video filters capable of manipulating outgoing video streams during calls. The
library provides an extensive implementation of commonly used video filters, making configuration easier and enabling
seamless integration.

Currently available implementations are:

- [`RTCVideoFilter`](#rtc-video-filter)

<a name="rtc-video-filter"></a>

### RTCVideoFilter

This filter allows users to modify their background during video calls.

Supported video filter modes include:

- Virtual background
  ([`.virtualBackground`](https://github.com/infobip/infobip-rtc-extensions-ios/wiki/RTCVideoFilterMode#virtual-background)) -
  Users can set a custom image to be displayed as their background
- Background blur
  ([`.backgroundBlur`](https://github.com/infobip/infobip-rtc-extensions-ios/wiki/RTCVideoFilterMode#background-blur)) -
  Users can blur their background.
- None ([`.none`](https://github.com/infobip/infobip-rtc-extensions-ios/wiki/RTCVideoFilterMode#none)) - No video
  filtering is applied video frames are passed through unchanged. This option is recommended over repeatedly
  reallocating video filter resources to avoid visible disruptions.

To utilize this feature, begin by creating an instance of
the [`RTCVideoFilter`](https://github.com/infobip/infobip-rtc-extensions-ios/wiki/RTCVideoFilter)
object. The constructor
accepts [`RTCVideoFilterOptions`](https://github.com/infobip/infobip-rtc-extensions-ios/wiki/RTCVideoFilterOptions)
for customization.

```swift
// Retrieve an image from a URL and create CIImage from it
let url = URL(string: "https://images.unsplash.com/photo-1558882224-dda166733046")
let data = try Data(contentsOf: url!)
let image = CIImage(image: UIImage(data: data))

// Create RTCVideoFilterOptions object and set the virtual background image
let options = RTCVideoFilterOptions(.virtualBackground, image)

// Create the RTCVideoFilter object with created options
let videoFilter = RTCVideoFilter(options)
```

For optimal performance, it's recommended to avoid reallocating video filter instances solely for mode changes. Instead,
pass the new options directly to the existing video filter instance. This approach minimizes resource overhead and
enhances overall efficiency.

```swift
// Create RTCVideoFilterOptions object with default values
let options = RTCVideoFilterOptions()

// Set created options on existing video filter object
videoFilter.options = options
```

### Applying the video filter

Once you've created the video filter, you can utilize it during calls.

You can set it beforehand when initiating a
new [`ApplicationCall`](https://github.com/infobip/infobip-rtc-ios/wiki/ApplicationCall)
using [`VideoOptions`](https://github.com/infobip/infobip-rtc-ios/wiki/VideoOptions) object within
the [`ApplicationCallOptions`](https://github.com/infobip/infobip-rtc-ios/wiki/ApplicationCallOptions) object:

```swift
// Obtain authentication token and get instance of InfobipRTC
let token = obtainToken()
let infobipRTC = getInfobipRTCInstance()

// Create a video application call with configured video options to use created video filter object
let callApplicationRequest = CallApplicationRequest(token, "45g2gql9ay4a2blu55uk1628", self)
let videoOptions = VideoOptions()
videoOptions.videoFilter = videoFilter
let applicationCallOptions = ApplicationCallOptions(video: true, videoOptions: videoOptions)
let applicationCall = infobipRTC.callApplication(callApplicationRequest, applicationCallOptions)
```

Alternatively, you can apply the filter to the
existing [`ApplicationCall`](https://github.com/infobip/infobip-rtc-ios/wiki/ApplicationCall) using the
[`videoFilter`](https://github.com/infobip/infobip-rtc-ios/wiki/ApplicationCall#set-video-filter) method:

```swift
// Retrieve the active application call and set the video filter to created video filter
let applicationCall = getInfobipRTCInstance().getActiveApplicationCall()
applicationCall?.videoFilter(videoFilter)
```

### Implementing your own

If you wish to provide your own implementation of video filters, you should create a class that conforms to
the [`VideoFilter`](https://github.com/infobip/infobip-rtc-ios/wiki/VideoFilter) protocol and implement its methods. For
example, a trivial video filter which creates a sepia effect is given bellow:

```swift
public class SampleVideoFilter : VideoFilter {
    private var ciContext: CIContext!
    private var outputPixelBufferPool: CVPixelBufferPool?
    
    public func start(_ resolution: CGSize, _ sourceFps: Int, _ videoFilterManager: VideoFilterManager) throws {
        // init logic here
        self.ciContext = CIContext(options: nil)
        self.outputPixelBufferPool = try allocateOutputBufferPool(with: resolution)
    }
    
    public func applyFilter(_ ciImage: CIImage, _ rotation: Int, _ timeStampNs: Int, _ completion: @escaping (CIImage) -> Void) throws {
        let output = applySepiaEffect(to: ciImage)
        guard let output = output else {
            print("Output image was not created")
            completion(ciImage)
            return
        }
        completion(output)
    }
    
    public func stop() {
        // deinit logic here
        self.ciContext = nil
        self.outputPixelBufferPool = nil
    }
    
    private func applySepiaEffect(to inputImage: CIImage) -> CIImage? {
        // Create a sepia tone filter
        guard let sepiaFilter = CIFilter(name: "CISepiaTone") else {
            print("Failed to create sepia tone filter")
            return nil
        }
        
        // Set the input image for the filter
        sepiaFilter.setValue(inputImage, forKey: kCIInputImageKey)
        
        // Set the intensity of the sepia effect (0.0 to 1.0)
        sepiaFilter.setValue(0.8, forKey: kCIInputIntensityKey)
        
        // Get the output image from the filter
        guard let outputCIImage = sepiaFilter.outputImage else {
            print("Failed to get output image from sepia tone filter")
            return nil
        }
        
        var newPixelBuffer: CVPixelBuffer?
        CVPixelBufferPoolCreatePixelBuffer(kCFAllocatorDefault, outputPixelBufferPool!, &newPixelBuffer)
        guard let outputPixelBuffer = newPixelBuffer else {
            print("Failed to get output pixel buffer")
            return nil
        }
        
        // Render the CIImage into the pixel buffer
        ciContext.render(outputCIImage, to: outputPixelBuffer)
        
        // Convert the pixel buffer back to a CIImage
        let pixelBufferCIImage = CIImage(cvPixelBuffer: outputPixelBuffer)
        
        return pixelBufferCIImage
    }
    
    private func allocateOutputBufferPool(with imageSize: CGSize) throws -> CVPixelBufferPool {
        
        let outputRetainedBufferCountHint = 10
        let width = imageSize.width
        let height = imageSize.height
        let pixelBufferAttributes: [String: Any] = [
            kCVPixelBufferPixelFormatTypeKey as String: UInt(kCVPixelFormatType_32BGRA),
            kCVPixelBufferWidthKey as String: Int(width),
            kCVPixelBufferHeightKey as String: Int(height),
            kCVPixelBufferIOSurfacePropertiesKey as String: [:]
        ]
        
        let poolAttributes = [kCVPixelBufferPoolMinimumBufferCountKey as String: outputRetainedBufferCountHint]
        var cvPixelBufferPool: CVPixelBufferPool?
        CVPixelBufferPoolCreate(kCFAllocatorDefault, poolAttributes as NSDictionary?, pixelBufferAttributes as NSDictionary?, &cvPixelBufferPool)
        guard let pixelBufferPool = cvPixelBufferPool else {
            throw VideoFilterError("Allocation failure: Could not allocate pixel buffer pool.")
        }

        preallocateBuffers(pool: pixelBufferPool, allocationThreshold: outputRetainedBufferCountHint)

        var pixelBuffer: CVPixelBuffer?
        let auxAttributes = [kCVPixelBufferPoolAllocationThresholdKey as String: outputRetainedBufferCountHint] as NSDictionary
        CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(kCFAllocatorDefault, pixelBufferPool, auxAttributes, &pixelBuffer)
        pixelBuffer = nil

        return pixelBufferPool
    }
    
    private func preallocateBuffers(pool: CVPixelBufferPool, allocationThreshold: Int) {
        var pixelBuffers = [CVPixelBuffer]()
        var error: CVReturn = kCVReturnSuccess
        let auxAttributes = [kCVPixelBufferPoolAllocationThresholdKey as String: allocationThreshold] as NSDictionary
        var pixelBuffer: CVPixelBuffer?
        while error == kCVReturnSuccess {
            error = CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(kCFAllocatorDefault, pool, auxAttributes, &pixelBuffer)
            if let pixelBuffer = pixelBuffer {
                pixelBuffers.append(pixelBuffer)
            }
            pixelBuffer = nil
        }
        pixelBuffers.removeAll()
    }
}
```

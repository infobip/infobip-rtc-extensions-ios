// swift-tools-version:5.4
import PackageDescription

let package = Package(
    name: "InfobipRTCExtensions",
    products: [
        .library(
            name: "InfobipRTCExtensions",
            targets: ["InfobipRTCExtensions"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "InfobipRTCExtensions",
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.25/InfobipRTCExtensions.zip",
            checksum: "5c606865ed80bd3ed61929edf5369ce3cf211497585397e953b51509c9f2b429"
        )
    ]
)


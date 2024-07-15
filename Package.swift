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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.27/InfobipRTCExtensions.zip",
            checksum: "aad2d750bda0a8689f49b2cda935713a279f60ef348cb44dc216c28947923a4f"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.2/InfobipRTCExtensions.zip",
            checksum: "1ff377e3f363931e9426f5754f2a8267333b46bbecc99da5c0b0fbc24df9d748"
        )
    ]
)


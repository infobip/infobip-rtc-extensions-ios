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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.3/InfobipRTCExtensions.zip",
            checksum: "8ff180234f2de6419d29c0c38fa45b81a5dd4aa34872b46232802f8f56f39c73"
        )
    ]
)


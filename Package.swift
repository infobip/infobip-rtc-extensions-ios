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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.1/InfobipRTCExtensions.zip",
            checksum: "cba1d0fae9844d84eee1bec19f6a848234d49b8246a02ae2370572791983e187"
        )
    ]
)


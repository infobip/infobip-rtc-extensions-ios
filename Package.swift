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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.4/InfobipRTCExtensions.zip",
            checksum: "93c0cf306eb52449677fbae9f6d1956f13e36c482e4281bf27c0d35e471c37c8"
        )
    ]
)


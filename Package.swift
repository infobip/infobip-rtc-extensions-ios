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
            checksum: "a63169cdc139e428cc00f345df0e83e60a254f807b888a7bff200591433092d7"
        )
    ]
)


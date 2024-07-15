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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.28/InfobipRTCExtensions.zip",
            checksum: "514b3470bb3a96e2f256539151325a93f0fd6f51863b0eea193d89997de4ef1b"
        )
    ]
)


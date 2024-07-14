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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.11/InfobipRTCExtensions.zip",
            checksum: "ee5d67c51c66374660c29cc9312315590c6007becb7565bc0ec8e7b357072470"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.5/InfobipRTCExtensions.zip",
            checksum: "09ec01e27b61606438c44628de021c63e299a4399e3ee53115c0ad61f18554e6"
        )
    ]
)


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
            checksum: "177f4dcb8c79a30b09b87e4070d185e18d79e6aeddb7b94cc77a1071df6d0551"
        )
    ]
)


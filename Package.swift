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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.6/InfobipRTCExtensions.zip",
            checksum: "32c679b63d5ff2b2fca395f989c32e9c417d5ebd125302361c9b103c183d91a2"
        )
    ]
)


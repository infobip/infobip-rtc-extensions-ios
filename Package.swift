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
            checksum: "aa9aa2492cdb6ebb99d3c493cd74ae6fe51cd7e1a02bd987f22b10a467f6b485"
        )
    ]
)


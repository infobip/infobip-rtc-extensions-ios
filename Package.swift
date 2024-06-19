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
            checksum: "6618976df954c85be21861be5f0baeebc6898e809de5d7a3ad47f81dd7d47d88"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.0/InfobipRTCExtensions.zip",
            checksum: "07e58d393aadbbbdd78d0ec02ca7ff0b3abe5ea53ed874dbd19bed8dc6e8837b"
        )
    ]
)


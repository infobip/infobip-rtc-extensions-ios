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
            checksum: "39c6b160eace73efa30ca257284c1c5fb28f9849bf95372ad5cf6a168076d68a"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.9/InfobipRTCExtensions.zip",
            checksum: "5407da9cdbcc25cda02f97899d190a8df73c5d307c674487ddf47016d6516eed"
        )
    ]
)


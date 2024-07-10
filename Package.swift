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
            checksum: "12a527f62cbc47c121e9dcd62f07342e6ca028a8f947cbb6a902c123b58a83c4"
        )
    ]
)


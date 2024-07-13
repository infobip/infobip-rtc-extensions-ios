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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.8/InfobipRTCExtensions.zip",
            checksum: "0a79f1f8d2e65fd501a8b01a4b00cbecff7fdad9611bb0d7be7f3c115475f4e3"
        )
    ]
)


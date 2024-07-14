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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.12/InfobipRTCExtensions.zip",
            checksum: "0cacb6ae2b5fa9ac6a1fc135dc876cae684f3a48d21f2d08ed25639ea988e503"
        )
    ]
)


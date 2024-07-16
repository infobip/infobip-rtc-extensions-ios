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
            url: "https://rtc.cdn.infobip.com/ios/extensions/2.0.0/InfobipRTCExtensions.zip",
            checksum: "f4f1810b5d584bea6d8943d5675bb67d7f2bddc0b2e9cb57f8d8a1acf53231bd"
        )
    ]
)


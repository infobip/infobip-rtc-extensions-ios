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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.5/InfobipRTCExtensions.zip",
            checksum: "3e3ada0c634285dfb2ab44f6f0e9c6001fc84face4f8dd623bde725596770dc9"
        )
    ]
)


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
            checksum: "4e06ac800de82fa8b432d21d34b468afb594f855fea2683e080466b64b38d39f"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.26/InfobipRTCExtensions.zip",
            checksum: "3f4d2866e8e85385365b7853dd8515d490cf0419b3cc45381d4ba8855f5efbde"
        )
    ]
)


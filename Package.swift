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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.22/InfobipRTCExtensions.zip",
            checksum: "3c2dcc40740fd562270bbe9fd677e9e9026aa966cb3f769f8bd76afd9c4af5d5"
        )
    ]
)


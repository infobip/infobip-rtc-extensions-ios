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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.7/InfobipRTCExtensions.zip",
            checksum: "5d1ca93475864c1e47c7f2be2b4d3e52737f14c2b67ee39a9f338d6bc67e9206"
        )
    ]
)


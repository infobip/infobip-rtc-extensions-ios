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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.11/InfobipRTCExtensions.zip",
            checksum: "244df0a5b6ebf368249c95d3615bddbb21c4b9b801f1b9a26e2403025a852b84"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.29/InfobipRTCExtensions.zip",
            checksum: "fac601eb86cd29090c5b4c4f03341fa5eb330a3ce9205b936f5bb67df0414f8a"
        )
    ]
)


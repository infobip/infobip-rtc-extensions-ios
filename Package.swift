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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.27/InfobipRTCExtensions.zip",
            checksum: "44b697e2b23131f1f4365f11f2a8af7937ce2a9a3c70b46dc49e0e98a2adead6"
        )
    ]
)


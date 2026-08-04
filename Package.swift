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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.1.2/InfobipRTCExtensions.zip",
            checksum: "ee5ce29d282a99c47829b2317f96deaa4de8339b95262f5d8f7fc4a1e609f73c"
        )
    ]
)


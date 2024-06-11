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
            checksum: "0dc51a913c3e14bc9a70a9a6f6418db258032c22f2968d4ddb786f204a7f595a"
        )
    ]
)


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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.6/InfobipRTCExtensions.zip",
            checksum: "2bb9cb2c93f9b638f2aaf3c18bdce4586b765b29be3c25bce845f6bf15eb9edb"
        )
    ]
)


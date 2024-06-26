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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.5/InfobipRTCExtensions.zip",
            checksum: "0518a4f286ae02a8a4cd893e4f2c6012270424738585f9ce98290b7484db9175"
        )
    ]
)


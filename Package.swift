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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.12/InfobipRTCExtensions.zip",
            checksum: "e631f2be57e8887ed2f280f6332dc2013879c08d0894e7688d7c29455ffbf6e3"
        )
    ]
)


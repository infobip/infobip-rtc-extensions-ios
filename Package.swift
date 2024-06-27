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
            checksum: "9032b3325b4d879182012e9ba9f530a1cf911df88112ef688639b8ee8d963e23"
        )
    ]
)


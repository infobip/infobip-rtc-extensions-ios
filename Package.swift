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
            checksum: "e39183ab9ba2d72a07998a5511e76708b0c406117c19e6fa12c8e4d4fb044471"
        )
    ]
)


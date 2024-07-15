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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.15/InfobipRTCExtensions.zip",
            checksum: "18d64de90cbc848efcfca906f4e5844acaad299ce995d521dafae3b876dc144d"
        )
    ]
)


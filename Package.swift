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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.13/InfobipRTCExtensions.zip",
            checksum: "85d551fa1923b3184717ebbbe031bc6c7507588b14097ecb272937e5ecc62693"
        )
    ]
)


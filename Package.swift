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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.4/InfobipRTCExtensions.zip",
            checksum: "3ffd384ce3a174679a1219cb51156c7e4ac190e73ffd189ccb238a7def0b2b07"
        )
    ]
)


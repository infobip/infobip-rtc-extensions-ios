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
            url: "https://rtc.cdn.infobip.com/ios/extensions/1.0.2/InfobipRTCExtensions.zip",
            checksum: "e5a1f140d49fd5091bed5057b748323ac23da7c5226a6ba036bc9e595f166752"
        )
    ]
)


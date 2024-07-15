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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.14/InfobipRTCExtensions.zip",
            checksum: "58a93101c8c4e492866f5cbbc3cd0ea95ee0c350b9395e7a164ef50b5baf0238"
        )
    ]
)


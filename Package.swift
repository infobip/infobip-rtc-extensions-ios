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
            checksum: "26409f35441aeba1701ec481a783f330a4247817e25220be8ea0c2dc680a2222"
        )
    ]
)


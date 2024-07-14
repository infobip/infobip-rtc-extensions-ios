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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.11/InfobipRTCExtensions.zip",
            checksum: "aa2c09c67e74498db551079495875345130125f4d8d718dc8c634e3412c343a8"
        )
    ]
)


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
            checksum: "be345e7dc20a15d90514f1c15d2abb5b2558e2ee2fb287e9e2ff05abc4f1e65c"
        )
    ]
)


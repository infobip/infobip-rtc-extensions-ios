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
            url: "https://rtc.cdn.infobip.com/ios/extensions/0.0.23/InfobipRTCExtensions.zip",
            checksum: "e5bde245f2a32454e452a9ea5d4ceda1339834593d43d728ce8ac52ee409891d"
        )
    ]
)


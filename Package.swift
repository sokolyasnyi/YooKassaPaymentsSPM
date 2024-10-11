// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YooKassaPaymentsSPM",
    products: [
        .library(
            name: "YooKassaPaymentsSPM",
            targets: ["YooKassaPaymentsSPM"]),
    ],
    dependencies: [
        .package(url: "https://github.com/sokolyasnyi/YooKassaPaymentsBinary.git",
                 revision: "ef3bb137935c73c1d66f5494672e9b5127d2465f")
    ],
    targets: [
        .target(
            name: "YooKassaPaymentsSPM",
            dependencies: [
                "YooKassaPaymentsBinary"
            ]),
        .testTarget(
            name: "YooKassaPaymentsSPMTests",
            dependencies: ["YooKassaPaymentsSPM"]
        ),
    ]
)

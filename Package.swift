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
                 revision: "d80bd12c46aef044e1cda69de67b16b6b6a16039")
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

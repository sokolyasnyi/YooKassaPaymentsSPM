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
                 revision: "212327d122d62c03a8f2ab3075ef60bd4d9068b5")
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

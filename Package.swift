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
                 revision: "e74aa4e4e56688e0dc621644bde58ac6a7f6a34f")
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

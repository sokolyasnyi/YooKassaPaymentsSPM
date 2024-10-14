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
                 revision: "bc4b365f49eb60f2cb1c3d516a411ef2e4bf572f")
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

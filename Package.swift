// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "HKDF",
    products: [
        .library(name: "HKDF", targets: ["HKDF"]),
    ],
    dependencies: [
        .package(url: "https://github.com/IBM-Swift/BlueCryptor.git", from: "1.0.13"),
    ],
    targets: [
        .target(name: "HKDF", dependencies: ["Cryptor"], path: "Sources"),
        .testTarget(name: "HKDFTests", dependencies: ["HKDF"]),
    ],
    swiftLanguageVersions: [4]
)

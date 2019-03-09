// swift-tools-version:4.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "Zip",
    products: [
        .library(name: "Zip", targets: ["Zip"])
    ],
    targets: [
        .target(
            name: "minizip",
            dependencies: [],
            path: "Sources/Zip/minizip"),
        .target(
            name: "Zip",
            dependencies: ["minizip"],
            path: "Sources/Zip",
            exclude: ["minizip"]),
        .testTarget(
            name: "ZipTests",
            dependencies: ["Zip"],
            path: "Tests/ZipTests"),
        ]
)

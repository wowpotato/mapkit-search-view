// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.
import PackageDescription

let package = Package(
    name: "MapKitSearchView",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(name: "MapKitSearchView", targets: ["MapKitSearchView"]),
    ],
    targets: [
        .target(
            name: "MapKitSearchView",
            path: "Sources",
            resources: [.process("Resources")]
        )
    ]
)

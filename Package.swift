// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

/// ReSwift-Effect: A modern Swift state management library with side effect support
/// Based on ReSwift and Redux patterns, enhanced with Swift concurrency features
let package = Package(
    name: "reswift-effect",
    // Supported platforms and their minimum versions
    platforms: [
        .macOS(.v15),    // macOS 15.0+
        .iOS(.v17),      // iOS 17.0+
        .tvOS(.v17),     // tvOS 17.0+
        .watchOS(.v11)   // watchOS 11.0+
    ],
    // Public products that can be imported by other packages
    products: [
        .library(
            name: "ReSwiftEffect",
            targets: ["ReSwiftEffect"]
        ),
    ],
    // Package targets (modules)
    targets: [
        // Main library target containing the core ReSwift-Effect implementation
        .target(
            name: "ReSwiftEffect"
        ),
        // Test target for unit tests
        .testTarget(
            name: "ReSwift-EffectTests",
            dependencies: ["ReSwiftEffect"]
        ),
    ]
)


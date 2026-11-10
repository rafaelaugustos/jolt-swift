// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Jolt",
    platforms: [.iOS(.v17), .macOS(.v14)],
    products: [.library(name: "JoltSwiftUI", targets: ["JoltSwiftUI"])],
    targets: [
        .target(name: "JoltCore", path: "Sources/JoltCore", resources: [.process("Resources")]),
        .target(name: "JoltSwiftUI", dependencies: ["JoltCore"], path: "Sources/JoltSwiftUI"),
        .testTarget(name: "JoltSwiftUITests", dependencies: ["JoltSwiftUI"], path: "Tests/JoltSwiftUITests"),
        .testTarget(name: "JoltCoreTests", dependencies: ["JoltCore"], path: "Tests/JoltCoreTests", resources: [.process("Fixtures")])
    ]
)

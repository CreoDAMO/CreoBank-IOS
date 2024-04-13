// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreoBank",
    platforms: [
        .iOS(.v14), // Minimum iOS version
        .macOS(.v10_15), // Minimum macOS version
        .watchOS(.v7), // Minimum watchOS version
        .tvOS(.v14), // Minimum tvOS version
        .linux // Linux support
    ],
    products: [
        // Products define the executables and libraries produced by a package.
        .library(
            name: "CreoBankAuthentication",
            targets: ["Authentication"]),
        .library(
            name: "CreoBankData",
            targets: ["Data"]),
        .library(
            name: "CreoBankAnalytics",
            targets: ["Analytics"]),
        .library(
            name: "CreoBankUI",
            targets: ["UI"]),
        // Add more libraries for other functionalities...
    ],
    dependencies: [
        // List of package dependencies
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "5.4.0"),
        .package(url: "https://github.com/realm/realm-cocoa.git", from: "10.10.0"),
        .package(url: "https://github.com/CombineCommunity/CombineCocoa.git", from: "0.11.0"),
        // Add other dependencies here...
    ],
    targets: [
        // Authentication
        .target(
            name: "Authentication",
            dependencies: [
                "CreoBankData",
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Authentication"
        ),
        // Data
        .target(
            name: "Data",
            dependencies: [
                "CreoBankAnalytics",
                "CreoBankUI",
                .product(name: "RealmSwift", package: "realm-cocoa")
            ],
            path: "Data"
        ),
        // Analytics
        .target(
            name: "Analytics",
            dependencies: []
        ),
        // UI
        .target(
            name: "UI",
            dependencies: [
                "CreoBankData",
                .product(name: "CombineCocoa", package: "CombineCocoa")
            ],
            path: "UI"
        ),
        // Tests
        .testTarget(
            name: "CreoBankTests",
            dependencies: [
                "Authentication",
                "Data",
                "Analytics",
                "UI",
                // Add other dependencies for testing if needed...
            ],
            path: "Tests"
        ),
    ]
)
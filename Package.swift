// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "CreoBank",
    platforms: [
        .iOS(.v14), // Minimum iOS version
        .macOS(.v10_15), // Minimum macOS version
    ],
    products: [
        // Products define the executables and libraries produced by a package.
        .library(
            name: "CreoBankBackend",
            targets: ["Backend"]),
        .library(
            name: "CreoBankFrontend",
            targets: ["Frontend"]),
        .library(
            name: "CreoQuickPayServices",
            targets: ["CreoQuickPayServices"]),
    ],
    dependencies: [
        // List of package dependencies
        .package(url: "https://github.com/vapor/vapor.git", from: "4.0.0"),
        // Add other dependencies here...
    ],
    targets: [
        .target(
            name: "Backend",
            dependencies: [
                // Add dependencies specific to the backend target...
            ],
            path: "Backend"
        ),
        .target(
            name: "Frontend",
            dependencies: [
                // Add dependencies specific to the frontend target...
            ],
            path: "Frontend"
        ),
        .target(
            name: "CreoQuickPayServices",
            dependencies: [
                // Add dependencies specific to the services target...
            ],
            path: "Services"
        ),
        .testTarget(
            name: "CreoBankTests",
            dependencies: [
                "Backend",
                "Frontend",
                "CreoQuickPayServices",
                // Add other dependencies for testing if needed...
            ],
            path: "Tests"
        ),
    ]
)

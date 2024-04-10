// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "CreoBank",
    products: [
        // Products define the executables and libraries produced by a package.
        .library(
            name: "CreoBank",
            targets: ["Backend", "Frontend"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package.
        .target(
            name: "Backend",
            dependencies: [],
            path: "Backend" // Path to the Backend target sources
        ),
        .target(
            name: "Frontend",
            dependencies: [],
            path: "Frontend" // Path to the Frontend target sources
        ),
        .testTarget(
            name: "CreoBankTests",
            dependencies: ["Backend", "Frontend"],
            path: "Tests" // Path to the Tests
        ),
    ]
)

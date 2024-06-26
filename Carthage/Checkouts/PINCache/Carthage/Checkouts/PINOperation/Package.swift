// swift-tools-version:5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "PINOperation",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "PINOperation",
            targets: ["PINOperation"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "PINOperation",
            path: "Source",
            exclude: ["Info.plist"],
            resources: [.process("PrivacyInfo.xcprivacy")],
            // Path to public header symlinks (allows for angle bracket imports)
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .define("NS_BLOCK_ASSERTIONS", to: "1", .when(configuration: .release)),
            ]),
        .testTarget(
            name: "PINOperationTests", 
            dependencies: ["PINOperation"], 
            path: "Tests",
            exclude: ["Info.plist"]),
    ]
)

// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyPrivateLibRelease",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "MyPrivateLibRelease",
            targets: ["MyPrivateLibRelease", "MyPrivateLib"]
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "MyPrivateLibRelease"
        ),
        .binaryTarget(
            name: "MyPrivateLib",
            url: "https://api.github.com/repos/FlickerSoul/MyPrivateLibRelease/releases/assets/248993424.zip",
            checksum: "af6663ef9bfb51398807f37869a1b205665917d8eb4aa9fc614a635f870ea3f3"
        )
    ]
)

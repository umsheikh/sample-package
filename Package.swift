// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "sample-package",
    platforms: [.iOS(.v15)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "sample-package",
            targets: ["sample-package"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/AzureAD/microsoft-authentication-library-for-objc.git", from: "1.1.14"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "sample-package",
            dependencies: [
                .product(name: "MSAL", package: "microsoft-authentication-library-for-objc"),
            ]),
        .testTarget(
            name: "sample-packageTests",
            dependencies: ["sample-package"]),
    ]
)

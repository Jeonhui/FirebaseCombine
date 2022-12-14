// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FirebaseCombine",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "FirebaseCombine",
            targets: ["FirebaseCombine"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/firebase/firebase-ios-sdk.git", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "FirebaseCombine",
            dependencies: [.product(name: "FirebaseAuth", package: "firebase-ios-sdk"),
                           .product(name: "FirebaseFirestoreSwift", package: "firebase-ios-sdk"),
                           .product(name: "FirebaseDatabase", package: "firebase-ios-sdk")]),
        .testTarget(
            name: "FirebaseCombineTests",
            dependencies: ["FirebaseCombine"]),
    ]
    
)

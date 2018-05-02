// swift-tools-version:4.1

import PackageDescription

let package = Package(
    name: "XCTAssertUnrecoverable",
    products: [
        .library(
            name: "XCTAssertUnrecoverable",
            targets: ["XCTAssertUnrecoverable"]),
    ],
    dependencies: [ ],
    targets: [
        .target(
            name: "XCTAssertUnrecoverable",
            dependencies: []),
        .testTarget(
            name: "XCTAssertUnrecoverableTests",
            dependencies: ["XCTAssertUnrecoverable"]),
    ]
)

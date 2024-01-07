// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Leetcode",
  products: [
    .library(name: "Leetcode", targets: ["Leetcode"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-collections.git", .branch("release/1.1")),
  ],
  targets: [
    .target(
      name: "Leetcode",
      dependencies: [
        .product(name: "Collections", package: "swift-collections"),
      ],
      path: "Sources"
    ),
    .testTarget(
      name: "LeetcodeTests",
      dependencies: ["Leetcode"],
      path: "Tests"
    ),
  ]
)

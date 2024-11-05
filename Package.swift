// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Leetcode",
  products: [
    .library(name: "Leetcode", targets: ["Leetcode"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apple/swift-collections.git", from: .init(1, 1, 4)),
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

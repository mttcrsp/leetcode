// swift-tools-version:5.3

import PackageDescription

let package = Package(
  name: "Leetcode",
  products: [
    .library(name: "Leetcode", targets: ["Leetcode"]),
  ],
  targets: [
    .target(name: "Leetcode", path: "Sources"),
    .testTarget(name: "LeetcodeTests", dependencies: ["Leetcode"], path: "Tests"),
  ]
)

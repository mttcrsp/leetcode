@testable
import Leetcode
import XCTest

final class SmallestNumberInInfiniteSetTests: XCTestCase {
  func testTestPopsmallest1() {
    let input = (
      ["SmallestInfiniteSet", "addBack", "popSmallest", "popSmallest", "popSmallest", "addBack", "popSmallest", "popSmallest", "popSmallest"],
      [[], [2], [], [], [], [1], [], [], []]
    )

    let output = [nil, nil, 1, 2, 3, nil, 1, 4, 5]
    let infiniteSet = SmallestInfiniteSet()
    for ((command, args), output) in zip(zip(input.0, input.1), output) {
      switch command {
      case "addBack":
        infiniteSet.addBack(args[0])
      case "popSmallest":
        XCTAssertEqual(infiniteSet.popSmallest(), output)
      default:
        continue
      }
    }
  }
}

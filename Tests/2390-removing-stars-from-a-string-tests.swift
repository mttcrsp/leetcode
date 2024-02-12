@testable
import Leetcode
import XCTest

final class RemovingStarsFromAStringTests: XCTestCase {
  func testRemovestars1() {
    let input = "leet**cod*e"
    let output = "lecoe"
    XCTAssertEqual(RemovingStarsFromAString().removeStars(input), output)
  }

  func testRemovestars2() {
    let input = "erase*****"
    let output = ""
    XCTAssertEqual(RemovingStarsFromAString().removeStars(input), output)
  }
}

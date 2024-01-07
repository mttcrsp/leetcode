@testable
import Leetcode
import XCTest

final class RemovingStarsFromAStringTests: XCTestCase {
  func testTestRemovestars1() {
    let input = "leet**cod*e"
    let output = "lecoe"
    XCTAssertEqual(RemovingStarsFromAString().removeStars(input), output)
  }

  func testTestRemovestars2() {
    let input = "erase*****"
    let output = ""
    XCTAssertEqual(RemovingStarsFromAString().removeStars(input), output)
  }
}

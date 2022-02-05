@testable
import Leetcode
import XCTest

final class EditDistanceTests: XCTestCase {
  func testMinDistance1() {
    let input = ("horse", "ros")
    let output = 3
    XCTAssertEqual(EditDistance().minDistance(input.0, input.1), output)
  }

  func testMinDistance2() {
    let input = ("intention", "execution")
    let output = 5
    XCTAssertEqual(EditDistance().minDistance(input.0, input.1), output)
  }
}

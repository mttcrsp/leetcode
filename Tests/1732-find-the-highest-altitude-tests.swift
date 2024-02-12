@testable
import Leetcode
import XCTest

final class FindTheHighestAltitudeTests: XCTestCase {
  func testLargestaltitude1() {
    let input = [-5, 1, 5, 0, -7]
    let output = 1
    XCTAssertEqual(FindTheHighestAltitude().largestAltitude(input), output)
  }

  func testLargestaltitude2() {
    let input = [-4, -3, -2, -1, 4, 3, 2]
    let output = 0
    XCTAssertEqual(FindTheHighestAltitude().largestAltitude(input), output)
  }
}

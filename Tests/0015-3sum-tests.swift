@testable
import Leetcode
import XCTest

final class ThreeSumTests: XCTestCase {
  func testThreeSum1() {
    let input = [-1, 0, 1, 2, -1, -4]
    let output = [[-1, -1, 2], [-1, 0, 1]]
    XCTAssertEqual(ThreeSum().threeSum(input), output)
  }

  func testThreeSum2() {
    let input = [0, 1, 1]
    let output = [] as [[Int]]
    XCTAssertEqual(ThreeSum().threeSum(input), output)
  }

  func testThreeSum3() {
    let input = [0, 0, 0]
    let output = [[0, 0, 0]]
    XCTAssertEqual(ThreeSum().threeSum(input), output)
  }
}

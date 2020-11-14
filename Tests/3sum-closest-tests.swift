@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testThreeSumClosest1() {
    let input = ([-1, 2, 1, -4], 1)
    let output = 2
    XCTAssertEqual(Solution().threeSumClosest(input.0, input.1), output)
  }

  func testThreeSumClosest2() {
    let input = ([1, 1, 1, 1, 1, 2, 2, 2, 99, 99, 99, 99, 99, 99], 6)
    let output = 6
    XCTAssertEqual(Solution().threeSumClosest(input.0, input.1), output)
  }

  func testThreeSumClosest3() {
    let input = ([7, -2, -10, 0, 2, -2, 6, -1, -9, 1], -15)
    let output = -14
    XCTAssertEqual(Solution().threeSumClosest(input.0, input.1), output)
  }

  func testThreeSumClosest4() {
    let input = ([5, 1, -10, 7, 3, 9, 2, -4, 10, 5, -2, -5, -8, -7, 0, 1, 8, 9, 9, -8], -4)
    let output = -4
    XCTAssertEqual(Solution().threeSumClosest(input.0, input.1), output)
  }
}

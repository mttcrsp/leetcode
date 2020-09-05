@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testRunningSum1() {
    let input = [1, 2, 3, 4]
    let output = [1, 3, 6, 10]
    XCTAssertEqual(Solution().runningSum(input), output)
  }

  func testRunningSum2() {
    let input = [1, 1, 1, 1, 1]
    let output = [1, 2, 3, 4, 5]
    XCTAssertEqual(Solution().runningSum(input), output)
  }

  func testRunningSum3() {
    let input = [3, 1, 2, 10, 1]
    let output = [3, 4, 6, 16, 17]
    XCTAssertEqual(Solution().runningSum(input), output)
  }
}

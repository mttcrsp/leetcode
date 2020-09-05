@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testNumsSameConsecDiff1() {
    let input = (1, 1)
    let output = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    XCTAssertEqual(Solution().numsSameConsecDiff(input.0, input.1), output)
  }

  func testNumsSameConsecDiff2() {
    let input = (3, 7)
    let output = [181, 292, 707, 818, 929]
    XCTAssertEqual(Solution().numsSameConsecDiff(input.0, input.1), output)
  }

  func testNumsSameConsecDiff3() {
    let input = (2, 1)
    let output = [10, 12, 21, 23, 32, 34, 43, 45, 54, 56, 65, 67, 76, 78, 87, 89, 98]
    XCTAssertEqual(Solution().numsSameConsecDiff(input.0, input.1), output)
  }

  func testNumsSameConsecDiff4() {
    let input = (4, 5)
    let output = [1616, 2727, 3838, 4949, 5050, 6161, 7272, 8383, 9494]
    XCTAssertEqual(Solution().numsSameConsecDiff(input.0, input.1), output)
  }
}

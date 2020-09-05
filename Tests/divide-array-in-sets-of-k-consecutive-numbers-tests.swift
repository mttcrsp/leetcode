@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testIsPossibleDivide1() {
    let input = ([1, 2, 3, 3, 4, 4, 5, 6], 4)
    let output = true
    XCTAssertEqual(Solution().isPossibleDivide(input.0, input.1), output)
  }

  func testIsPossibleDivide2() {
    let input = ([3, 2, 1, 2, 3, 4, 3, 4, 5, 9, 10, 11], 3)
    let output = true
    XCTAssertEqual(Solution().isPossibleDivide(input.0, input.1), output)
  }

  func testIsPossibleDivide3() {
    let input = ([3, 3, 2, 2, 1, 1], 3)
    let output = true
    XCTAssertEqual(Solution().isPossibleDivide(input.0, input.1), output)
  }

  func testIsPossibleDivide4() {
    let input = ([1, 2, 3, 4], 3)
    let output = false
    XCTAssertEqual(Solution().isPossibleDivide(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testCheckIfCanBreak1() {
    let input = ("abc", "xya")
    let output = true
    XCTAssertEqual(Solution().checkIfCanBreak(input.0, input.1), output)
  }

  func testCheckIfCanBreak2() {
    let input = ("abe", "acd")
    let output = false
    XCTAssertEqual(Solution().checkIfCanBreak(input.0, input.1), output)
  }

  func testCheckIfCanBreak3() {
    let input = ("leetcodee", "interview")
    let output = true
    XCTAssertEqual(Solution().checkIfCanBreak(input.0, input.1), output)
  }
}

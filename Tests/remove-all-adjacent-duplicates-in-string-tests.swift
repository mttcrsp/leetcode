@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testRemoveDuplicates1() {
    let input = "abbaca"
    let output = "ca"
    XCTAssertEqual(Solution().removeDuplicates(input), output)
  }

  func testRemoveDuplicates2() {
    let input = "abbacaa"
    let output = "c"
    XCTAssertEqual(Solution().removeDuplicates(input), output)
  }

  func testRemoveDuplicates3() {
    let input = "cbbaabbcaa"
    let output = ""
    XCTAssertEqual(Solution().removeDuplicates(input), output)
  }
}

@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testFindLHS1() {
    let input = [1, 3, 2, 2, 5, 2, 3, 7]
    let output = 5
    XCTAssertEqual(Solution().findLHS(input), output)
  }
}

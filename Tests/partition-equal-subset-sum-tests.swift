@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testCanPartition1() {
    let input = [1, 5, 11, 5]
    let output = true
    XCTAssertEqual(Solution().canPartition(input), output)
  }

  func testCanPartition2() {
    let input = [1, 2, 5]
    let output = false
    XCTAssertEqual(Solution().canPartition(input), output)
  }
}

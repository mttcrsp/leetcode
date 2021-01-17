@testable
import Leetcode
import XCTest

final class LongestHarmoniousSubsequenceTests: XCTestCase {
  func testFindLHS1() {
    let input = [1, 3, 2, 2, 5, 2, 3, 7]
    let output = 5
    XCTAssertEqual(LongestHarmoniousSubsequence().findLHS(input), output)
  }
}

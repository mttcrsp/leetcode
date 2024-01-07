@testable
import Leetcode
import XCTest

final class MaximumSubsequenceScoreTests: XCTestCase {
  func testTestMaxscore1() {
    let input = ([1, 3, 3, 2], [2, 1, 3, 4], 3)
    let output = 12
    XCTAssertEqual(MaximumSubsequenceScore().maxScore(input.0, input.1, input.2), output)
  }

  func testTestMaxscore2() {
    let input = ([4, 2, 3, 1, 1], [7, 5, 10, 9, 6], 1)
    let output = 30
    XCTAssertEqual(MaximumSubsequenceScore().maxScore(input.0, input.1, input.2), output)
  }
}

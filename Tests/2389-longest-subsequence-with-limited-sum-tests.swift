@testable
import Leetcode
import XCTest

final class LongestSubsequenceWithLimitedSumTests: XCTestCase {
  func testAnswerQueries1() {
    let input = ([4, 5, 2, 1], [3, 10, 21])
    let output = [2, 3, 4]
    XCTAssertEqual(LongestSubsequenceWithLimitedSum().answerQueries(input.0, input.1), output)
  }

  func testAnswerQueries2() {
    let input = ([2, 3, 4, 5], [1])
    let output = [0]
    XCTAssertEqual(LongestSubsequenceWithLimitedSum().answerQueries(input.0, input.1), output)
  }
}

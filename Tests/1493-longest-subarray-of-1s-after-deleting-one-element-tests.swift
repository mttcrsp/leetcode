@testable
import Leetcode
import XCTest

final class LongestSubarrayOf1SAfterDeletingOneElementTests: XCTestCase {
  func testLongestsubarray1() {
    let input = [1, 1, 0, 1]
    let output = 3
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testLongestsubarray2() {
    let input = [0, 1, 1, 1, 0, 1, 1, 0, 1]
    let output = 5
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testLongestsubarray3() {
    let input = [1, 1, 1]
    let output = 2
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testLongestsubarray4() {
    let input = [0, 1, 1, 1, 0]
    let output = 3
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testLongestsubarray5() {
    let input = [0, 1, 1, 0, 0, 1, 0]
    let output = 2
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }
}

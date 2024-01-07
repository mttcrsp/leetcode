@testable
import Leetcode
import XCTest

final class LongestSubarrayOf1SAfterDeletingOneElementTests: XCTestCase {
  func testTestLongestsubarray1() {
    let input = [1, 1, 0, 1]
    let output = 3
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testTestLongestsubarray2() {
    let input = [0, 1, 1, 1, 0, 1, 1, 0, 1]
    let output = 5
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testTestLongestsubarray3() {
    let input = [1, 1, 1]
    let output = 2
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testTestLongestsubarray4() {
    let input = [0, 1, 1, 1, 0]
    let output = 3
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }

  func testTestLongestsubarray5() {
    let input = [0, 1, 1, 0, 0, 1, 0]
    let output = 2
    XCTAssertEqual(LongestSubarrayOf1SAfterDeletingOneElement().longestSubarray(input), output)
  }
}

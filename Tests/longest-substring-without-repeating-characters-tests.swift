@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testLengthOfLongestSubstring1() {
    let input = "abcabcbb"
    let output = 3
    XCTAssertEqual(Solution().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring2() {
    let input = "bbbbb"
    let output = 1
    XCTAssertEqual(Solution().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring3() {
    let input = "pwwkew"
    let output = 3
    XCTAssertEqual(Solution().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring4() {
    let input = ""
    let output = 0
    XCTAssertEqual(Solution().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring5() {
    let input = "dvdf"
    let output = 3
    XCTAssertEqual(Solution().lengthOfLongestSubstring(input), output)
  }
}

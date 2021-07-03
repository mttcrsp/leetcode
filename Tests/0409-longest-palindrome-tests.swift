@testable
import Leetcode
import XCTest

final class LongestPalindromeTests: XCTestCase {
  func testLongestPalindrome1() {
    let input = "abccccdd"
    let output = 7
    XCTAssertEqual(LongestPalindrome().longestPalindrome(input), output)
  }

  func testLongestPalindrome2() {
    let input = "aabccccdd"
    let output = 9
    XCTAssertEqual(LongestPalindrome().longestPalindrome(input), output)
  }

  func testLongestPalindrome3() {
    let input = ""
    let output = 0
    XCTAssertEqual(LongestPalindrome().longestPalindrome(input), output)
  }
}

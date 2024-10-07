@testable
import Leetcode
import XCTest

final class LongestPalindromicSubstringTests: XCTestCase {
  func testLongestPalindrome1() {
    let input = "babad"
    let output = "bab"
    XCTAssertEqual(LongestPalindromicSubstring().longestPalindrome(input), output)
  }

  func testLongestPalindrome2() {
    let input = "cbbd"
    let output = "bb"
    XCTAssertEqual(LongestPalindromicSubstring().longestPalindrome(input), output)
  }
}

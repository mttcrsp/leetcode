@testable
import Leetcode
import XCTest

final class LongestSubstringWithoutRepeatingCharactersTests: XCTestCase {
  func testLengthOfLongestSubstring1() {
    let input = "abcabcbb"
    let output = 3
    XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring2() {
    let input = "bbbbb"
    let output = 1
    XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring3() {
    let input = "pwwkew"
    let output = 3
    XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring4() {
    let input = ""
    let output = 0
    XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input), output)
  }

  func testLengthOfLongestSubstring5() {
    let input = "dvdf"
    let output = 3
    XCTAssertEqual(LongestSubstringWithoutRepeatingCharacters().lengthOfLongestSubstring(input), output)
  }
}

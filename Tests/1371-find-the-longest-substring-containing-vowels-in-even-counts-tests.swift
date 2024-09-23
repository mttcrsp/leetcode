@testable
import Leetcode
import XCTest

final class FindTheLongestSubstringContainingVowelsInEvenCountsTests: XCTestCase {
  func testFindTheLongestSubstring1() {
    let input = "eleetminicoworoep"
    let output = 13
    XCTAssertEqual(FindTheLongestSubstringContainingVowelsInEvenCounts().findTheLongestSubstring(input), output)
  }

  func testFindTheLongestSubstring2() {
    let input = "leetcodeisgreat"
    let output = 5
    XCTAssertEqual(FindTheLongestSubstringContainingVowelsInEvenCounts().findTheLongestSubstring(input), output)
  }

  func testFindTheLongestSubstring3() {
    let input = "bcbcbc"
    let output = 6
    XCTAssertEqual(FindTheLongestSubstringContainingVowelsInEvenCounts().findTheLongestSubstring(input), output)
  }
}

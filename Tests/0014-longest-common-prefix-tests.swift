@testable
import Leetcode
import XCTest

final class LongestCommonPrefixTests: XCTestCase {
  func testLongestCommonPrefix1() {
    let input = ["flower", "flow", "flight"]
    let output = "fl"
    XCTAssertEqual(LongestCommonPrefix().longestCommonPrefix(input), output)
  }

  func testLongestCommonPrefix2() {
    let input = ["dog", "racecar", "car"]
    let output = ""
    XCTAssertEqual(LongestCommonPrefix().longestCommonPrefix(input), output)
  }
}

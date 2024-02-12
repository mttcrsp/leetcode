@testable
import Leetcode
import XCTest

final class LongestCommonSubsequenceTests: XCTestCase {
  func testLongestcommonsubsequence1() {
    let input = ("abcde", "ace")
    let output = 3
    XCTAssertEqual(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1), output)
  }

  func testLongestcommonsubsequence2() {
    let input = ("abc", "abc")
    let output = 3
    XCTAssertEqual(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1), output)
  }

  func testLongestcommonsubsequence3() {
    let input = ("abc", "def")
    let output = 0
    XCTAssertEqual(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1), output)
  }

  func testLongestcommonsubsequence4() {
    let input = ("fsadghjfdgahjsfdasgjhfdgajhsgfjhdasfghjsd", "adshgjfjgkhafdghjksfahgjdsfweyurtyadzfhjg")
    let output = 21
    XCTAssertEqual(LongestCommonSubsequence().longestCommonSubsequence(input.0, input.1), output)
  }
}

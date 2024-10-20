@testable
import Leetcode
import XCTest

final class FindTheLengthOfTheLongestCommonPrefixTests: XCTestCase {
  func testLongestCommonPrefix1() {
    let input = ([1, 10, 100], [1000])
    let output = 3
    XCTAssertEqual(FindTheLengthOfTheLongestCommonPrefix().longestCommonPrefix(input.0, input.1), output)
  }

  func testLongestCommonPrefix2() {
    let input = ([1, 2, 3], [4, 4, 4])
    let output = 0
    XCTAssertEqual(FindTheLengthOfTheLongestCommonPrefix().longestCommonPrefix(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class PalindromicSubstringsTests: XCTestCase {
  func testCountSubstrings1() {
    let input = "abc"
    let output = 3
    XCTAssertEqual(PalindromicSubstrings().countSubstrings(input), output)
  }

  func testCountSubstrings2() {
    let input = "aaa"
    let output = 6
    XCTAssertEqual(PalindromicSubstrings().countSubstrings(input), output)
  }
}

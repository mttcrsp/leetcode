@testable
import Leetcode
import XCTest

final class PalindromeNumberTests: XCTestCase {
  func testIsPalindrome1() {
    let input = 121
    let output = true
    XCTAssertEqual(PalindromeNumber().isPalindrome(input), output)
  }

  func testIsPalindrome2() {
    let input = -121
    let output = false
    XCTAssertEqual(PalindromeNumber().isPalindrome(input), output)
  }

  func testIsPalindrome3() {
    let input = 10
    let output = false
    XCTAssertEqual(PalindromeNumber().isPalindrome(input), output)
  }
}

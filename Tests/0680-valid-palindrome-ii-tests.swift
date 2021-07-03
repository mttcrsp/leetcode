@testable
import Leetcode
import XCTest

final class ValidPalindromeIiTests: XCTestCase {
  func testValidPalindrome1() {
    let input = "aba"
    let output = true
    XCTAssertEqual(ValidPalindromeIi().validPalindrome(input), output)
  }

  func testValidPalindrome2() {
    let input = "abca"
    let output = true
    XCTAssertEqual(ValidPalindromeIi().validPalindrome(input), output)
  }

  func testValidPalindrome3() {
    let input = "abc"
    let output = false
    XCTAssertEqual(ValidPalindromeIi().validPalindrome(input), output)
  }
}

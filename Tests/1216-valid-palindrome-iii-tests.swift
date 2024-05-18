@testable
import Leetcode
import XCTest

final class ValidPalindromeIiiTests: XCTestCase {
  func testIsValidPalindrome1() {
    let input = ("abcdeca", 2)
    let output = true
    XCTAssertEqual(ValidPalindromeIii().isValidPalindrome(input.0, input.1), output)
  }

  func testIsValidPalindrome2() {
    let input = ("abbababa", 1)
    let output = true
    XCTAssertEqual(ValidPalindromeIii().isValidPalindrome(input.0, input.1), output)
  }
}

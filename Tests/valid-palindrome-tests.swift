@testable
import Leetcode
import XCTest

final class ValidPalindromeTests: XCTestCase {
  func testIsPalindrome1() {
    let input = "A man, a plan, a canal: Panama"
    let output = true
    XCTAssertEqual(ValidPalindrome().isPalindrome(input), output)
  }

  func testIsPalindrome2() {
    let input = "race a car"
    let output = false
    XCTAssertEqual(ValidPalindrome().isPalindrome(input), output)
  }

  func testIsPalindrome3() {
    let input = "0A"
    let output = false
    XCTAssertEqual(ValidPalindrome().isPalindrome(input), output)
  }
}

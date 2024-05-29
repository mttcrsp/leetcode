@testable
import Leetcode
import XCTest

final class PalindromePermutationTests: XCTestCase {
  func testCanPermutePalindrome1() {
    let input = "code"
    let output = false
    XCTAssertEqual(PalindromePermutation().canPermutePalindrome(input), output)
  }

  func testCanPermutePalindrome2() {
    let input = "aab"
    let output = true
    XCTAssertEqual(PalindromePermutation().canPermutePalindrome(input), output)
  }

  func testCanPermutePalindrome3() {
    let input = "carerac"
    let output = true
    XCTAssertEqual(PalindromePermutation().canPermutePalindrome(input), output)
  }
}

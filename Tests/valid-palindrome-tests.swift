@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testIsPalindrome1() {
    let input = "A man, a plan, a canal: Panama"
    let output = true
    XCTAssertEqual(Solution().isPalindrome(input), output)
  }

  func testIsPalindrome2() {
    let input = "race a car"
    let output = false
    XCTAssertEqual(Solution().isPalindrome(input), output)
  }

  func testIsPalindrome3() {
    let input = "0A"
    let output = false
    XCTAssertEqual(Solution().isPalindrome(input), output)
  }
}

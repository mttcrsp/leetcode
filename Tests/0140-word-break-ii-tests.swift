@testable
import Leetcode
import XCTest

final class WordBreakIiTests: XCTestCase {
  func testWordBreak1() {
    let input = ("catsanddog", ["cat", "cats", "and", "sand", "dog"])
    let output = ["cats and dog", "cat sand dog"]
    XCTAssertEqual(Set(WordBreakIi().wordBreak(input.0, input.1)), Set(output))
  }

  func testWordBreak2() {
    let input = ("pineapplepenapple", ["apple", "pen", "applepen", "pine", "pineapple"])
    let output = ["pine apple pen apple", "pineapple pen apple", "pine applepen apple"]
    XCTAssertEqual(Set(WordBreakIi().wordBreak(input.0, input.1)), Set(output))
  }

  func testWordBreak3() {
    let input = ("catsandog", ["cats", "dog", "sand", "and", "cat"])
    let output = [] as [String]
    XCTAssertEqual(Set(WordBreakIi().wordBreak(input.0, input.1)), Set(output))
  }
}

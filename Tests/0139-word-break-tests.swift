@testable
import Leetcode
import XCTest

final class WordBreakTests: XCTestCase {
  func testWordBreak1() {
    let input = ("leetcode", ["leet", "code"])
    let output = true
    XCTAssertEqual(WordBreak().wordBreak(input.0, input.1), output)
  }

  func testWordBreak2() {
    let input = ("applepenapple", ["apple", "pen"])
    let output = true
    XCTAssertEqual(WordBreak().wordBreak(input.0, input.1), output)
  }

  func testWordBreak3() {
    let input = ("catsandog", ["cats", "dog", "sand", "and", "cat"])
    let output = false
    XCTAssertEqual(WordBreak().wordBreak(input.0, input.1), output)
  }
}

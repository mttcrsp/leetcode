@testable
import Leetcode
import XCTest

final class WordPatternTests: XCTestCase {
  func testWordPattern1() {
    let input = ("abba", "dog cat cat dog")
    let output = true
    XCTAssertEqual(WordPattern().wordPattern(input.0, input.1), output)
  }

  func testWordPattern2() {
    let input = ("abba", "dog cat cat fish")
    let output = false
    XCTAssertEqual(WordPattern().wordPattern(input.0, input.1), output)
  }

  func testWordPattern3() {
    let input = ("aaaa", "dog cat cat dog")
    let output = false
    XCTAssertEqual(WordPattern().wordPattern(input.0, input.1), output)
  }

  func testWordPattern4() {
    let input = ("abba", "dog dog dog dog")
    let output = false
    XCTAssertEqual(WordPattern().wordPattern(input.0, input.1), output)
  }
}

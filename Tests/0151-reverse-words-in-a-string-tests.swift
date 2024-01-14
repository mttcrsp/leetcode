@testable
import Leetcode
import XCTest

final class ReverseWordsInAStringTests: XCTestCase {
  func testTestReversewords1() {
    let input = "the sky is blue"
    let output = "blue is sky the"
    XCTAssertEqual(ReverseWordsInAString().reverseWords(input), output)
  }

  func testTestReversewords2() {
    let input = "  hello world  "
    let output = "world hello"
    XCTAssertEqual(ReverseWordsInAString().reverseWords(input), output)
  }

  func testTestReversewords3() {
    let input = "a good   example"
    let output = "example good a"
    XCTAssertEqual(ReverseWordsInAString().reverseWords(input), output)
  }
}

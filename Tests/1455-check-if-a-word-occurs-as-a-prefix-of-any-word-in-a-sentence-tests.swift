@testable
import Leetcode
import XCTest

final class CheckIfAWordOccursAsAPrefixOfAnyWordInASentenceTests: XCTestCase {
  func testIsPrefixOfWord1() {
    let input = ("i love eating burger", "burg")
    let output = 4
    XCTAssertEqual(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1), output)
  }

  func testIsPrefixOfWord2() {
    let input = ("this problem is an easy problem", "pro")
    let output = 2
    XCTAssertEqual(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1), output)
  }

  func testIsPrefixOfWord3() {
    let input = ("i am tired", "you")
    let output = -1
    XCTAssertEqual(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1), output)
  }

  func testIsPrefixOfWord4() {
    let input = ("i use triple pillow", "pill")
    let output = 4
    XCTAssertEqual(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1), output)
  }

  func testIsPrefixOfWord5() {
    let input = ("hello from the other side", "they")
    let output = -1
    XCTAssertEqual(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1), output)
  }
}

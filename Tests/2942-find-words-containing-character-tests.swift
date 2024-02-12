@testable
import Leetcode
import XCTest

final class FindWordsContainingCharacterTests: XCTestCase {
  func testFindwordscontaining1() {
    let input = (["leet", "code"], "e" as Character)
    let output = [0, 1]
    XCTAssertEqual(FindWordsContainingCharacter().findWordsContaining(input.0, input.1), output)
  }

  func testFindwordscontaining3() {
    let input = (["abc", "bcd", "aaaa", "cbc"], "a" as Character)
    let output = [0, 2]
    XCTAssertEqual(FindWordsContainingCharacter().findWordsContaining(input.0, input.1), output)
  }

  func testFindwordscontaining5() {
    let input = (["abc", "bcd", "aaaa", "cbc"], "z" as Character)
    let output = [] as [Int]
    XCTAssertEqual(FindWordsContainingCharacter().findWordsContaining(input.0, input.1), output)
  }
}

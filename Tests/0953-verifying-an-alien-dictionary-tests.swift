@testable
import Leetcode
import XCTest

final class VerifyingAnAlienDictionaryTests: XCTestCase {
  func testIsAlienSorted1() {
    let input = (["hello", "leetcode"], "hlabcdefgijkmnopqrstuvwxyz")
    let output = true
    XCTAssertEqual(VerifyingAnAlienDictionary().isAlienSorted(input.0, input.1), output)
  }

  func testIsAlienSorted2() {
    let input = (["word", "world", "row"], "worldabcefghijkmnpqstuvxyz")
    let output = false
    XCTAssertEqual(VerifyingAnAlienDictionary().isAlienSorted(input.0, input.1), output)
  }

  func testIsAlienSorted3() {
    let input = (["apple", "app"], "abcdefghijklmnopqrstuvwxyz")
    let output = false
    XCTAssertEqual(VerifyingAnAlienDictionary().isAlienSorted(input.0, input.1), output)
  }
}

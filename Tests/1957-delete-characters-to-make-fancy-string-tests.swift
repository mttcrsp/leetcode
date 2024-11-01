@testable
import Leetcode
import XCTest

final class DeleteCharactersToMakeFancyStringTests: XCTestCase {
  func testMakeFancyString1() {
    let input = "leeetcode"
    let output = "leetcode"
    XCTAssertEqual(DeleteCharactersToMakeFancyString().makeFancyString(input), output)
  }

  func testMakeFancyString2() {
    let input = "aaabaaaa"
    let output = "aabaa"
    XCTAssertEqual(DeleteCharactersToMakeFancyString().makeFancyString(input), output)
  }

  func testMakeFancyString3() {
    let input = "aab"
    let output = "aab"
    XCTAssertEqual(DeleteCharactersToMakeFancyString().makeFancyString(input), output)
  }
}

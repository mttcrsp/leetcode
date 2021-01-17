@testable
import Leetcode
import XCTest

final class FindCommonCharactersTests: XCTestCase {
  func testCommonChars1() {
    let input = ["bella", "label", "roller"]
    let output = ["e", "l", "l"]
    XCTAssertEqual(Set(FindCommonCharacters().commonChars(input)), Set(output))
  }

  func testCommonChars2() {
    let input = ["cool", "lock", "cook"]
    let output = ["c", "o"]
    XCTAssertEqual(Set(FindCommonCharacters().commonChars(input)), Set(output))
  }

  func testCommonChars3() {
    let input = ["cool"]
    let output = ["c", "o", "o", "l"]
    XCTAssertEqual(Set(FindCommonCharacters().commonChars(input)), Set(output))
  }
}

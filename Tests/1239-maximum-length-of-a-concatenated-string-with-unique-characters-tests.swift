@testable
import Leetcode
import XCTest

final class MaximumLengthOfAConcatenatedStringWithUniqueCharactersTests: XCTestCase {
  func testMaxlength1() {
    let input = ["un", "iq", "ue"]
    let output = 4
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testMaxlength2() {
    let input = ["cha", "r", "act", "ers"]
    let output = 6
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testMaxlength3() {
    let input = ["abcdefghijklmnopqrstuvwxyz"]
    let output = 26
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testMaxlength4() {
    let input = ["abc", "ab", "cd"]
    let output = 4
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testMaxlength5() {
    let input = ["aa", "bb"]
    let output = 0
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }
}

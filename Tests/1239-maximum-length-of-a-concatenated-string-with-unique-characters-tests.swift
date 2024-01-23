@testable
import Leetcode
import XCTest

final class MaximumLengthOfAConcatenatedStringWithUniqueCharactersTests: XCTestCase {
  func testTestMaxlength1() {
    let input = ["un", "iq", "ue"]
    let output = 4
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testTestMaxlength2() {
    let input = ["cha", "r", "act", "ers"]
    let output = 6
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testTestMaxlength3() {
    let input = ["abcdefghijklmnopqrstuvwxyz"]
    let output = 26
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testTestMaxlength4() {
    let input = ["abc", "ab", "cd"]
    let output = 4
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }

  func testTestMaxlength5() {
    let input = ["aa", "bb"]
    let output = 0
    XCTAssertEqual(MaximumLengthOfAConcatenatedStringWithUniqueCharacters().maxLength(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class ReplaceAllDigitsWithCharactersTests: XCTestCase {
  func testReplaceDigits1() {
    let input = "a1c1e1"
    let output = "abcdef"
    XCTAssertEqual(ReplaceAllDigitsWithCharacters().replaceDigits(input), output)
  }

  func testReplaceDigits2() {
    let input = "a1b2c3d4e"
    let output = "abbdcfdhe"
    XCTAssertEqual(ReplaceAllDigitsWithCharacters().replaceDigits(input), output)
  }
}

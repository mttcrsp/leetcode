@testable
import Leetcode
import XCTest

final class LongestRepeatingCharacterReplacementTests: XCTestCase {
  func testCharacterReplacement1() {
    let input = ("ABAB", 2)
    let output = 4
    XCTAssertEqual(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1), output)
  }

  func testCharacterReplacement2() {
    let input = ("AABABBA", 1)
    let output = 4
    XCTAssertEqual(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1), output)
  }

  func testCharacterReplacement3() {
    let input = ("AABABBBA", 0)
    let output = 3
    XCTAssertEqual(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1), output)
  }

  func testCharacterReplacement4() {
    let input = ("", 2)
    let output = 0
    XCTAssertEqual(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1), output)
  }

  func testCharacterReplacement5() {
    let input = ("AABCBBBA", 2)
    let output = 6
    XCTAssertEqual(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1), output)
  }

  func testCharacterReplacement6() {
    let input = ("BAAAB", 2)
    let output = 5
    XCTAssertEqual(LongestRepeatingCharacterReplacement().characterReplacement(input.0, input.1), output)
  }
}

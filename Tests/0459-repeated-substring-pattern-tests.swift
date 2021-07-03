@testable
import Leetcode
import XCTest

final class RepeatedSubstringPatternTests: XCTestCase {
  func testRepeatedSubstringPattern1() {
    let input = "abab"
    let output = true
    XCTAssertEqual(RepeatedSubstringPattern().repeatedSubstringPattern(input), output)
  }

  func testRepeatedSubstringPattern2() {
    let input = "aba"
    let output = false
    XCTAssertEqual(RepeatedSubstringPattern().repeatedSubstringPattern(input), output)
  }

  func testRepeatedSubstringPattern3() {
    let input = "abcabcabcabc"
    let output = true
    XCTAssertEqual(RepeatedSubstringPattern().repeatedSubstringPattern(input), output)
  }

  func testRepeatedSubstringPattern4() {
    let input = "abaabaaba"
    let output = true
    XCTAssertEqual(RepeatedSubstringPattern().repeatedSubstringPattern(input), output)
  }

  func testRepeatedSubstringPattern5() {
    let input = "a"
    let output = false
    XCTAssertEqual(RepeatedSubstringPattern().repeatedSubstringPattern(input), output)
  }
}

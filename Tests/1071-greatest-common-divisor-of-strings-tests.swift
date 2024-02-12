@testable
import Leetcode
import XCTest

final class GreatestCommonDivisorOfStringsTests: XCTestCase {
  func testGcdofstrings1() {
    let input = ("ABCABC", "ABC")
    let output = "ABC"
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }

  func testGcdofstrings2() {
    let input = ("ABABAB", "ABAB")
    let output = "AB"
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }

  func testgcdofstrings3() {
    let input = ("leet", "code")
    let output = ""
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }

  func testgcdofstrings4() {
    let input = ("leet", "leet")
    let output = "leet"
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }
}

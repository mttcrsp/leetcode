@testable
import Leetcode
import XCTest

final class GreatestCommonDivisorOfStringsTests: XCTestCase {
  func testTestGcdofstrings1() {
    let input = ("ABCABC", "ABC")
    let output = "ABC"
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }

  func testTestGcdofstrings2() {
    let input = ("ABABAB", "ABAB")
    let output = "AB"
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }

  func testtestgcdofstrings3() {
    let input = ("leet", "code")
    let output = ""
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }

  func testtestgcdofstrings4() {
    let input = ("leet", "leet")
    let output = "leet"
    XCTAssertEqual(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1), output)
  }
}

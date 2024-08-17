@testable
import Leetcode
import XCTest

final class RegularExpressionMatchingTests: XCTestCase {
  func testIsMatch1() {
    let input = ("aa", "a")
    let output = false
    XCTAssertEqual(RegularExpressionMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch2() {
    let input = ("aa", "a*")
    let output = true
    XCTAssertEqual(RegularExpressionMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch3() {
    let input = ("ab", ".*")
    let output = true
    XCTAssertEqual(RegularExpressionMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch4() {
    let input = ("aaaaaaaaaaaaaaaaaaab", "a*a*a*a*a*a*a*a*a*b")
    let output = true
    XCTAssertEqual(RegularExpressionMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch5() {
    let input = ("aaaaaaaaaaaaaaaaaaac", "a*a*a*a*a*a*a*a*a*b")
    let output = false
    XCTAssertEqual(RegularExpressionMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch6() {
    let input = ("ab", ".*c")
    let output = false
    XCTAssertEqual(RegularExpressionMatching().isMatch(input.0, input.1), output)
  }
}

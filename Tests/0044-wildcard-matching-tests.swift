@testable
import Leetcode
import XCTest

final class WildcardMatchingTests: XCTestCase {
  func testIsMatch1() {
    let input = ("aa", "a")
    let output = false
    XCTAssertEqual(WildcardMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch2() {
    let input = ("aa", "*")
    let output = true
    XCTAssertEqual(WildcardMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch3() {
    let input = ("cb", "?a")
    let output = false
    XCTAssertEqual(WildcardMatching().isMatch(input.0, input.1), output)
  }

  func testIsMatch4() {
    let input = ("acdcb", "a*c?b")
    let output = false
    XCTAssertEqual(WildcardMatching().isMatch(input.0, input.1), output)
  }
}

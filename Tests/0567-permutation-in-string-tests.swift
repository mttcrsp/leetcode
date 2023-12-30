@testable
import Leetcode
import XCTest

final class PermutationInStringTests: XCTestCase {
  func testTestCheckinclusion1() {
    let input = ("ab", "eidbaooo")
    let output = true
    XCTAssertEqual(PermutationInString().checkInclusion(input.0, input.1), output)
  }

  func testTestCheckinclusion2() {
    let input = ("ab", "eidboaoo")
    let output = false
    XCTAssertEqual(PermutationInString().checkInclusion(input.0, input.1), output)
  }

  func testTestCheckinclusion3() {
    let input = ("ab", "eidba")
    let output = true
    XCTAssertEqual(PermutationInString().checkInclusion(input.0, input.1), output)
  }
}

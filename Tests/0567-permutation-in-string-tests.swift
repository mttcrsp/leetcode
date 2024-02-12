@testable
import Leetcode
import XCTest

final class PermutationInStringTests: XCTestCase {
  func testCheckinclusion1() {
    let input = ("ab", "eidbaooo")
    let output = true
    XCTAssertEqual(PermutationInString().checkInclusion(input.0, input.1), output)
  }

  func testCheckinclusion2() {
    let input = ("ab", "eidboaoo")
    let output = false
    XCTAssertEqual(PermutationInString().checkInclusion(input.0, input.1), output)
  }

  func testCheckinclusion3() {
    let input = ("ab", "eidba")
    let output = true
    XCTAssertEqual(PermutationInString().checkInclusion(input.0, input.1), output)
  }
}

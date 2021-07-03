@testable
import Leetcode
import XCTest

final class CustomSortStringTests: XCTestCase {
  func testCustomSortString1() {
    let input = ("cba", "abcd")
    let output = "cbad"
    XCTAssertEqual(CustomSortString().customSortString(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class RemoveAllAdjacentDuplicatesInStringIiTests: XCTestCase {
  func testRemoveDuplicates1() {
    let input = ("abcd", 2)
    let output = "abcd"
    XCTAssertEqual(RemoveAllAdjacentDuplicatesInStringIi().removeDuplicates(input.0, input.1), output)
  }

  func testRemoveDuplicates2() {
    let input = ("deeedbbcccbdaa", 3)
    let output = "aa"
    XCTAssertEqual(RemoveAllAdjacentDuplicatesInStringIi().removeDuplicates(input.0, input.1), output)
  }

  func testRemoveDuplicates3() {
    let input = ("pbbcggttciiippooaais", 2)
    let output = "ps"
    XCTAssertEqual(RemoveAllAdjacentDuplicatesInStringIi().removeDuplicates(input.0, input.1), output)
  }
}

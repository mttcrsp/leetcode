@testable
import Leetcode
import XCTest

final class RemoveAllAdjacentDuplicatesInStringTests: XCTestCase {
  func testRemoveDuplicates1() {
    let input = "abbaca"
    let output = "ca"
    XCTAssertEqual(RemoveAllAdjacentDuplicatesInString().removeDuplicates(input), output)
  }

  func testRemoveDuplicates2() {
    let input = "abbacaa"
    let output = "c"
    XCTAssertEqual(RemoveAllAdjacentDuplicatesInString().removeDuplicates(input), output)
  }

  func testRemoveDuplicates3() {
    let input = "cbbaabbcaa"
    let output = ""
    XCTAssertEqual(RemoveAllAdjacentDuplicatesInString().removeDuplicates(input), output)
  }
}

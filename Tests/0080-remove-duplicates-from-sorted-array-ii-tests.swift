@testable
import Leetcode
import XCTest

final class RemoveDuplicatesFromSortedArrayIiTests: XCTestCase {
  func testRemoveDuplicates1() {
    var input = [1, 1, 1, 2, 2, 3]
    let count = RemoveDuplicatesFromSortedArrayIi().removeDuplicates(&input)
    let output = [1, 1, 2, 2, 3]
    XCTAssertEqual(Array(input.prefix(count)), output)
  }

  func testRemoveDuplicates2() {
    var input = [0, 0, 1, 1, 1, 1, 2, 3, 3]
    let count = RemoveDuplicatesFromSortedArrayIi().removeDuplicates(&input)
    let output = [0, 0, 1, 1, 2, 3, 3]
    XCTAssertEqual(Array(input.prefix(count)), output)
  }
}

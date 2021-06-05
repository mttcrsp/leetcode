@testable
import Leetcode
import XCTest

final class RemoveDuplicatesFromSortedArrayTests: XCTestCase {
  func testRemoveDuplicates1() {
    var input = [1, 1, 2]
    let output = 2
    XCTAssertEqual(RemoveDuplicatesFromSortedArray().removeDuplicates(&input), output)
    XCTAssertEqual(input, [1, 2])
  }

  func testRemoveDuplicates2() {
    var input = [1, 1, 2, 2, 3, 3]
    let output = 3
    XCTAssertEqual(RemoveDuplicatesFromSortedArray().removeDuplicates(&input), output)
    XCTAssertEqual(input, [1, 2, 3])
  }

  func testRemoveDuplicates3() {
    var input = [1, 2, 3]
    let output = 3
    XCTAssertEqual(RemoveDuplicatesFromSortedArray().removeDuplicates(&input), output)
    XCTAssertEqual(input, [1, 2, 3])
  }
}

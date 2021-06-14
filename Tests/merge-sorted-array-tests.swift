@testable
import Leetcode
import XCTest

final class MergeSortedArrayTests: XCTestCase {
  func testMerge1() {
    var input = ([1, 2, 3, 0, 0, 0], 3, [2, 5, 6], 3)
    let output = [1, 2, 2, 3, 5, 6]
    MergeSortedArray().merge(&input.0, input.1, input.2, input.3)
    XCTAssertEqual(input.0, output)
  }

  func testMerge2() {
    var input = ([1], 1, [] as [Int], 0)
    let output = [1]
    MergeSortedArray().merge(&input.0, input.1, input.2, input.3)
    XCTAssertEqual(input.0, output)
  }

  func testMerge3() {
    var input = ([0], 0, [1], 1)
    let output = [1]
    MergeSortedArray().merge(&input.0, input.1, input.2, input.3)
    XCTAssertEqual(input.0, output)
  }
}

@testable
import Leetcode
import XCTest

final class MissingElementInSortedArrayTests: XCTestCase {
  func testMissingElement1() {
    let input = ([4, 7, 9, 10], 1)
    let output = 5
    XCTAssertEqual(MissingElementInSortedArray().missingElement(input.0, input.1), output)
  }

  func testMissingElement2() {
    let input = ([4, 7, 9, 10], 3)
    let output = 8
    XCTAssertEqual(MissingElementInSortedArray().missingElement(input.0, input.1), output)
  }

  func testMissingElement3() {
    let input = ([1, 2, 4], 3)
    let output = 6
    XCTAssertEqual(MissingElementInSortedArray().missingElement(input.0, input.1), output)
  }
}

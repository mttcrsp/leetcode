@testable
import Leetcode
import XCTest

final class SingleElementInASortedArrayTests: XCTestCase {
  func testSingleNonDuplicate1() {
    let input = [1, 1, 2, 3, 3, 4, 4, 8, 8]
    let output = 2
    XCTAssertEqual(SingleElementInASortedArray().singleNonDuplicate(input), output)
  }

  func testSingleNonDuplicate2() {
    let input = [3, 3, 7, 7, 10, 11, 11]
    let output = 10
    XCTAssertEqual(SingleElementInASortedArray().singleNonDuplicate(input), output)
  }
}

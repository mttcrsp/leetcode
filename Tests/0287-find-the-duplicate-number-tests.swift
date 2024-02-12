@testable
import Leetcode
import XCTest

final class FindTheDuplicateNumberTests: XCTestCase {
  func testFindduplicate1() {
    let input = [1, 3, 4, 2, 2]
    let output = 2
    XCTAssertEqual(FindTheDuplicateNumber().findDuplicate(input), output)
  }

  func testFindduplicate2() {
    let input = [3, 1, 3, 4, 2]
    let output = 3
    XCTAssertEqual(FindTheDuplicateNumber().findDuplicate(input), output)
  }
}

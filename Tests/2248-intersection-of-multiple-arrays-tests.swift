@testable
import Leetcode
import XCTest

final class IntersectionOfMultipleArraysTests: XCTestCase {
  func testIntersection1() {
    let input = [[3, 1, 2, 4, 5], [1, 2, 3, 4], [3, 4, 5, 6]]
    let output = [3, 4]
    XCTAssertEqual(IntersectionOfMultipleArrays().intersection(input), output)
  }

  func testIntersection2() {
    let input = [[1, 2, 3], [4, 5, 6]]
    let output = [] as [Int]
    XCTAssertEqual(IntersectionOfMultipleArrays().intersection(input), output)
  }
}

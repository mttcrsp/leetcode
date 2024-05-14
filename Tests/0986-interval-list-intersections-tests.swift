@testable
import Leetcode
import XCTest

final class IntervalListIntersectionsTests: XCTestCase {
  func testIntervalIntersection1() {
    let input = ([[0, 2], [5, 10], [13, 23], [24, 25]], [[1, 5], [8, 12], [15, 24], [25, 26]])
    let output = [[1, 2], [5, 5], [8, 10], [15, 23], [24, 24], [25, 25]]
    XCTAssertEqual(IntervalListIntersections().intervalIntersection(input.0, input.1), output)
  }

  func testIntervalIntersection3() {
    let input = ([[1, 3], [5, 9]], [] as [[Int]])
    let output = [] as [[Int]]
    XCTAssertEqual(IntervalListIntersections().intervalIntersection(input.0, input.1), output)
  }
}

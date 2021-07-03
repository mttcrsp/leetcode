@testable
import Leetcode
import XCTest

final class MergeIntervalsTests: XCTestCase {
  func testMerge1() {
    let input = [[1, 3], [2, 6], [8, 10], [15, 18]]
    let output = [[1, 6], [8, 10], [15, 18]]
    XCTAssertEqual(MergeIntervals().merge(input), output)
  }

  func testMerge2() {
    let input = [[1, 4], [4, 5]]
    let output = [[1, 5]]
    XCTAssertEqual(MergeIntervals().merge(input), output)
  }

  func testMerge3() {
    let input = [[1, 4], [2, 3]]
    let output = [[1, 4]]
    XCTAssertEqual(MergeIntervals().merge(input), output)
  }
}

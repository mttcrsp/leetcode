@testable
import Leetcode
import XCTest

final class AllPathsFromSourceToTargetTests: XCTestCase {
  func testAllPathsSourceTarget1() {
    let input = [[1, 2], [3], [3], []]
    let output = [[0, 1, 3], [0, 2, 3]]
    XCTAssertEqual(AllPathsFromSourceToTarget().allPathsSourceTarget(input), output)
  }

  func testAllPathsSourceTarget2() {
    let input = [[4, 3, 1], [3, 2, 4], [3], [4], []]
    let output = [[0, 4], [0, 3, 4], [0, 1, 3, 4], [0, 1, 2, 3, 4], [0, 1, 4]]
    XCTAssertEqual(AllPathsFromSourceToTarget().allPathsSourceTarget(input), output)
  }
}

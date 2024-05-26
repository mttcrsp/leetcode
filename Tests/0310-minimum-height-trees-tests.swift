@testable
import Leetcode
import XCTest

final class MinimumHeightTreesTests: XCTestCase {
  func testFindMinHeightTrees1() {
    let input = (4, [[1, 0], [1, 2], [1, 3]])
    let output = [1]
    XCTAssertEqual(Set(MinimumHeightTrees().findMinHeightTrees(input.0, input.1)), Set(output))
  }

  func testFindMinHeightTrees2() {
    let input = (6, [[3, 0], [3, 1], [3, 2], [3, 4], [5, 4]])
    let output = [3, 4]
    XCTAssertEqual(Set(MinimumHeightTrees().findMinHeightTrees(input.0, input.1)), Set(output))
  }

  func testFindMinHeightTrees3() {
    let input = (7, [[0, 1], [1, 2], [1, 3], [2, 4], [3, 5], [4, 6]])
    let output = [1, 2]
    XCTAssertEqual(Set(MinimumHeightTrees().findMinHeightTrees(input.0, input.1)), Set(output))
  }
}

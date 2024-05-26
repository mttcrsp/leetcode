@testable
import Leetcode
import XCTest

final class TreeDiameterTests: XCTestCase {
  func testTreeDiameter1() {
    let input = [[0, 1], [0, 2]]
    let output = 2
    XCTAssertEqual(TreeDiameter().treeDiameter(input), output)
  }

  func testTreeDiameter2() {
    let input = [[0, 1], [1, 2], [2, 3], [1, 4], [4, 5]]
    let output = 4
    XCTAssertEqual(TreeDiameter().treeDiameter(input), output)
  }
}

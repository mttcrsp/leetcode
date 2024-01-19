@testable
import Leetcode
import XCTest

final class AverageOfLevelsInBinaryTreeTests: XCTestCase {
  func testTestAverageoflevels1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = [3.00000, 14.50000, 11.00000]
    XCTAssertEqual(AverageOfLevelsInBinaryTree().averageOfLevels(input), output)
  }

  func testTestAverageoflevels2() {
    let input = TreeNode([3, 9, 20, 15, 7])
    let output = [3.00000, 14.50000, 11.00000]
    XCTAssertEqual(AverageOfLevelsInBinaryTree().averageOfLevels(input), output)
  }
}

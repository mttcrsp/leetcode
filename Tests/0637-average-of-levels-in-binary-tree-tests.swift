@testable
import Leetcode
import Testing

@Suite
struct AverageOfLevelsInBinaryTreeTests {
  @Test func testAverageoflevels1() {
    let input = TreeNode([3, 9, 20, nil, nil, 15, 7])
    let output = [3.00000, 14.50000, 11.00000]
    #expect(AverageOfLevelsInBinaryTree().averageOfLevels(input) == output)
  }

  @Test func testAverageoflevels2() {
    let input = TreeNode([3, 9, 20, 15, 7])
    let output = [3.00000, 14.50000, 11.00000]
    #expect(AverageOfLevelsInBinaryTree().averageOfLevels(input) == output)
  }
}

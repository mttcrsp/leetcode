@testable
import Leetcode
import Testing

@Suite
struct AllNodesDistanceKInBinaryTreeTests {
  @Test func testDistanceK1() {
    let input = (TreeNode([3, 5, 1, 6, 2, 0, 8, nil, nil, 7, 4]), TreeNode(5), 2)
    let output = [7, 4, 1]
    #expect(Set(AllNodesDistanceKInBinaryTree().distanceK(input.0, input.1, input.2)) == Set(output))
  }

  @Test func testDistanceK2() {
    let input = (TreeNode([1]), TreeNode(1), 3)
    let output = [] as [Int]
    #expect(Set(AllNodesDistanceKInBinaryTree().distanceK(input.0, input.1, input.2)) == Set(output))
  }
}

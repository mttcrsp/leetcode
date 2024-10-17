@testable
import Leetcode
import Testing

@Suite
struct DeleteNodesAndReturnForestTests {
  @Test func testDelNodes1() {
    let input = (TreeNode([1, 2, 3, 4, 5, 6, 7]), [3, 5])
    let output = [
      TreeNode([1, 2, nil, 4]),
      TreeNode([6]),
      TreeNode([7]),
    ]
    #expect(DeleteNodesAndReturnForest().delNodes(input.0, input.1) == output)
  }

  @Test func testDelNodes2() {
    let input = (TreeNode([1, 2, 4, nil, 3]), [3])
    let output = [TreeNode([1, 2, 4])]
    #expect(DeleteNodesAndReturnForest().delNodes(input.0, input.1) == output)
  }

  @Test func testDelNodes3() {
    let input = (TreeNode([1, 2, 3, nil, nil, nil, 4]), [2, 1])
    let output = [TreeNode([3, nil, 4])]
    #expect(DeleteNodesAndReturnForest().delNodes(input.0, input.1) == output)
  }
}

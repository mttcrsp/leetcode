@testable
import Leetcode
import Testing

@Suite
struct BinaryTreeRightSideViewTests {
  @Test func testRightSideView1() {
    let input = TreeNode([1, 2, 3, nil, 5, nil, nil])
    let output = [1, 3, 5]
    #expect(BinaryTreeRightSideView().rightSideView(input) == output)
  }

  @Test func testRightSideView2() {
    let input = TreeNode([1, nil, 3])
    let output = [1, 3]
    #expect(BinaryTreeRightSideView().rightSideView(input) == output)
  }

  @Test func testRightSideView3() {
    let input = TreeNode([1, 2, nil, 4])
    let output = [1, 2, 4]
    #expect(BinaryTreeRightSideView().rightSideView(input) == output)
  }
}

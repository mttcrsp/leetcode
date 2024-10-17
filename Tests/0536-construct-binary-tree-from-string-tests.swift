@testable
import Leetcode
import Testing

@Suite
struct ConstructBinaryTreeFromStringTests {
  @Test func testStr2tree1() {
    let input = "4(2(3)(1))(6(5))"
    let output = TreeNode([4, 2, 6, 3, 1, 5])
    #expect(ConstructBinaryTreeFromString().str2tree(input) == output)
  }

  @Test func testStr2tree2() {
    let input = "4(2(3)(1))(6(5)(7))"
    let output = TreeNode([4, 2, 6, 3, 1, 5, 7])
    #expect(ConstructBinaryTreeFromString().str2tree(input) == output)
  }

  @Test func testStr2tree3() {
    let input = "-4(2(3)(1))(6(5)(7))"
    let output = TreeNode([-4, 2, 6, 3, 1, 5, 7])
    #expect(ConstructBinaryTreeFromString().str2tree(input) == output)
  }
}

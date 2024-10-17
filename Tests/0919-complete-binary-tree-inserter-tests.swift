@testable
import Leetcode
import Testing

@Suite
struct CompleteBinaryTreeInserterTests {
  @Test func testInsert1() {
    let root = TreeNode([1, 2])
    let inserter = CBTInserter(root)
    #expect(inserter.insert(3) == 1)
    #expect(inserter.insert(4) == 2)
    #expect(root == inserter.get_root())
  }
}

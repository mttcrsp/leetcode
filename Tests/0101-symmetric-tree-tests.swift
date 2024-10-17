@testable
import Leetcode
import Testing

@Suite
struct SymmetricTreeTests {
  @Test func testIsSymmetric1() {
    let input = TreeNode([1, 2, 2, 3, 4, 4, 3])
    let output = true
    #expect(SymmetricTree().isSymmetric(input) == output)
  }

  @Test func testIsSymmetric2() {
    let input = TreeNode([1, 2, 2, nil, 3, nil, 3])
    let output = false
    #expect(SymmetricTree().isSymmetric(input) == output)
  }
}

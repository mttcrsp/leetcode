@testable
import Leetcode
import Testing

@Suite
struct SumOfRootToLeafBinaryNumbersTests {
  @Test func testSumRootToLeaf1() {
    let input = TreeNode([1, 0, 1, 0, 1, 0, 1])
    let output = 22
    #expect(SumOfRootToLeafBinaryNumbers().sumRootToLeaf(input) == output)
  }

  @Test func testSumRootToLeaf2() {
    let input = TreeNode([0])
    let output = 0
    #expect(SumOfRootToLeafBinaryNumbers().sumRootToLeaf(input) == output)
  }
}

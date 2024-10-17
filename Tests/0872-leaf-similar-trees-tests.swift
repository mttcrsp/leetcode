@testable
import Leetcode
import Testing

@Suite
struct LeafSimilarTreesTests {
  @Test func testLeafsimilar1() {
    let input = (
      TreeNode([3, 5, 1, 6, 2, 9, 8, nil, nil, 7, 4]),
      TreeNode([3, 5, 1, 6, 7, 4, 2, nil, nil, nil, nil, nil, nil, 9, 8])
    )
    let output = true
    #expect(LeafSimilarTrees().leafSimilar(input.0, input.1) == output)
  }

  @Test func testLeafsimilar2() {
    let input = (
      TreeNode([1, 2, 3]),
      TreeNode([1, 3, 2])
    )
    let output = false
    #expect(LeafSimilarTrees().leafSimilar(input.0, input.1) == output)
  }
}

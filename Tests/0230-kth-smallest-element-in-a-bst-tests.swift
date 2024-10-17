@testable
import Leetcode
import Testing

@Suite
struct KthSmallestElementInABstTests {
  @Test func testKthsmallest1() {
    let input = ([3, 1, 4, nil, 2], 1)
    let output = 1
    let tree = TreeNode(input.0)
    #expect(KthSmallestElementInABst().kthSmallest(tree, input.1) == output)
  }

  @Test func testKthsmallest2() {
    let input = ([5, 3, 6, 2, 4, nil, nil, 1], 3)
    let output = 3
    let tree = TreeNode(input.0)
    #expect(KthSmallestElementInABst().kthSmallest(tree, input.1) == output)
  }

  @Test func testKthsmallest3() {
    let input = ([1, nil, 2], 2)
    let output = 2
    let tree = TreeNode(input.0)
    #expect(KthSmallestElementInABst().kthSmallest(tree, input.1) == output)
  }
}

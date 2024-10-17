@testable
import Leetcode
import Testing

@Suite
struct MaximumDifferenceBetweenNodeAndAncestorTests {
  @Test func testMaxancestordiff1() {
    let input = TreeNode([8, 3, 10, 1, 6, nil, 14, nil, nil, 4, 7, 13])
    let output = 7
    #expect(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input) == output)
  }

  @Test func testMaxancestordiff2() {
    let input = TreeNode([1, nil, 2, nil, 0, 3])
    let output = 3
    #expect(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input) == output)
  }

  @Test func testMaxancestordiff3() {
    let input = TreeNode([1])
    let output = 0
    #expect(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input) == output)
  }

  @Test func testMaxancestordiff4() {
    let input: TreeNode? = nil
    let output = 0
    #expect(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input) == output)
  }

  @Test func testMaxancestordiff5() {
    let input = TreeNode([2, nil, 0, nil, 4, nil, 3, nil, 1])
    let output = 4
    #expect(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input) == output)
  }
}

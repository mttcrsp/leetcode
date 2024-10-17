@testable
import Leetcode
import Testing

@Suite
struct TwoSumIvInputIsABstTests {
  @Test func testFindTarget1() {
    let input = (TreeNode([5, 3, 6, 2, 4, nil, 7]), 9)
    let output = true
    #expect(TwoSumIvInputIsABst().findTarget(input.0, input.1) == output)
  }

  @Test func testFindTarget2() {
    let input = (TreeNode([5, 3, 6, 2, 4, nil, 7]), 28)
    let output = false
    #expect(TwoSumIvInputIsABst().findTarget(input.0, input.1) == output)
  }
}

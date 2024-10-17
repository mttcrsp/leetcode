@testable
import Leetcode
import Testing

@Suite
struct RangeSumOfBstTests {
  @Test func testRangeSumBST1() {
    let values: [Int?] = [10, 5, 15, 3, 7, nil, 18]
    let input = (TreeNode(values), 7, 15)
    let output = 32
    #expect(RangeSumOfBst().rangeSumBST(input.0, input.1, input.2) == output)
  }

  @Test func testRangeSumBST2() {
    let values: [Int?] = [10, 5, 15, 3, 7, 13, 18, 1, nil, 6]
    let input = (TreeNode(values), 6, 10)
    let output = 23
    #expect(RangeSumOfBst().rangeSumBST(input.0, input.1, input.2) == output)
  }
}

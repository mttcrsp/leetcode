@testable
import Leetcode
import Testing

@Suite
struct AmountOfTimeForBinaryTreeToBeInfectedTests {
  @Test func testAmountoftime1() {
    let input = (TreeNode([1, 5, 3, nil, 4, 10, 6, 9, 2]), 3)
    let output = 4
    #expect(AmountOfTimeForBinaryTreeToBeInfected().amountOfTime(input.0, input.1) == output)
  }

  @Test func testAmountoftime3() {
    let input = (TreeNode([1]), 1)
    let output = 0
    #expect(AmountOfTimeForBinaryTreeToBeInfected().amountOfTime(input.0, input.1) == output)
  }
}

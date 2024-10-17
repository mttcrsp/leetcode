@testable
import Leetcode
import Testing

@Suite
struct SumRootToLeafNumbersTests {
  @Test func testSumnumbers1() {
    let input = TreeNode([1, 2, 3])
    let output = 25
    #expect(SumRootToLeafNumbers().sumNumbers(input) == output)
  }

  @Test func testSumnumbers2() {
    let input = TreeNode([4, 9, 0, 5, 1])
    let output = 1026
    #expect(SumRootToLeafNumbers().sumNumbers(input) == output)
  }
}

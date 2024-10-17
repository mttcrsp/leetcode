@testable
import Leetcode
import Testing

@Suite
struct CombinationSumIiTests {
  @Test func testCombinationsum21() {
    let input = ([10, 1, 2, 7, 6, 1, 5], 8)
    let output = Set([[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]])
    #expect(Set(CombinationSumIi().combinationSum2(input.0, input.1)) == output)
  }

  @Test func testCombinationsum23() {
    let input = ([2, 5, 2, 1, 2], 5)
    let output = Set([[1, 2, 2], [5]])
    #expect(Set(CombinationSumIi().combinationSum2(input.0, input.1)) == output)
  }
}

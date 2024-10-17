@testable
import Leetcode
import Testing

@Suite
struct CombinationSumTests {
  @Test func testCombinationsum1() {
    let input = ([2, 3, 6, 7], 7)
    let output = [[2, 2, 3], [7]]
    #expect(Set(CombinationSum().combinationSum(input.0, input.1)) == Set(output))
  }

  @Test func testCombinationsum2() {
    let input = ([2, 3, 5], 8)
    let output = [[2, 2, 2, 2], [2, 3, 3], [3, 5]]
    #expect(Set(CombinationSum().combinationSum(input.0, input.1)) == Set(output))
  }

  @Test func testCombinationsum3() {
    let input = ([2], 1)
    let output = [] as [[Int]]
    #expect(Set(CombinationSum().combinationSum(input.0, input.1)) == Set(output))
  }
}

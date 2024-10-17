@testable
import Leetcode
import Testing

@Suite
struct MinCostClimbingStairsTests {
  @Test func testMinCostClimbingStairs1() {
    let input = [10, 15, 20]
    let output = 15
    #expect(MinCostClimbingStairs().minCostClimbingStairs(input) == output)
  }

  @Test func testMinCostClimbingStairs2() {
    let input = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
    let output = 6
    #expect(MinCostClimbingStairs().minCostClimbingStairs(input) == output)
  }

  @Test func testMinCostClimbingStairs3() {
    let input = [0, 2, 2, 1]
    let output = 2
    #expect(MinCostClimbingStairs().minCostClimbingStairs(input) == output)
  }
}

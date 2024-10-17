@testable
import Leetcode
import Testing

@Suite
struct MaximalNetworkRankTests {
  @Test func testMaximalNetworkRank1() {
    let input = (4, [[0, 1], [0, 3], [1, 2], [1, 3]])
    let output = 4
    #expect(MaximalNetworkRank().maximalNetworkRank(input.0, input.1) == output)
  }

  @Test func testMaximalNetworkRank2() {
    let input = (5, [[0, 1], [0, 3], [1, 2], [1, 3], [2, 3], [2, 4]])
    let output = 5
    #expect(MaximalNetworkRank().maximalNetworkRank(input.0, input.1) == output)
  }

  @Test func testMaximalNetworkRank3() {
    let input = (8, [[0, 1], [1, 2], [2, 3], [2, 4], [5, 6], [5, 7]])
    let output = 5
    #expect(MaximalNetworkRank().maximalNetworkRank(input.0, input.1) == output)
  }
}

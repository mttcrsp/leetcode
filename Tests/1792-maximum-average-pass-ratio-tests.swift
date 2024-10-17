@testable
import Leetcode
import Testing

@Suite
struct MaximumAveragePassRatioTests {
  @Test func testMaxAverageRatio1() {
    let input = ([[1, 2], [3, 5], [2, 2]], 2)
    let output = 0.78333
    #expect(MaximumAveragePassRatio().maxAverageRatio(input.0, input.1) == output)
  }

  @Test func testMaxAverageRatio2() {
    let input = ([[2, 4], [3, 9], [4, 5], [2, 10]], 4)
    let output = 0.53485
    #expect(MaximumAveragePassRatio().maxAverageRatio(input.0, input.1) == output)
  }
}

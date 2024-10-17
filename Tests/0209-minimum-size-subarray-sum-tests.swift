@testable
import Leetcode
import Testing

@Suite
struct MinimumSizeSubarraySumTests {
  @Test func testMinSubArrayLen1() {
    let input = (7, [2, 3, 1, 2, 4, 3])
    let output = 2
    #expect(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1) == output)
  }

  @Test func testMinSubArrayLen2() {
    let input = (10, [2, 2, 2, 2, 2, 2, 2, 4, 6, 2, 2, 2])
    let output = 2
    #expect(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1) == output)
  }

  @Test func testMinSubArrayLen3() {
    let input = (10, [2, 2, 2, 2, 2, 2, 11, 4, 6, 2, 2, 2])
    let output = 1
    #expect(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1) == output)
  }

  @Test func testMinSubArrayLen4() {
    let input = (10, [1, 1, 1, 1, 1, 1, 1, 1, 1])
    let output = 0
    #expect(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1) == output)
  }

  @Test func testMinSubArrayLen5() {
    let input = (10, [100])
    let output = 1
    #expect(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1) == output)
  }

  @Test func testMinSubArrayLen6() {
    let input = (10, [] as [Int])
    let output = 0
    #expect(MinimumSizeSubarraySum().minSubArrayLen(input.0, input.1) == output)
  }
}

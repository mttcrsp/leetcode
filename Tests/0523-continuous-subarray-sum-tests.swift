@testable
import Leetcode
import Testing

@Suite
struct ContinuousSubarraySumTests {
  @Test func testChecksubarraysum1() {
    let input = ([23, 2, 4, 6, 7], 6)
    let output = true
    #expect(ContinuousSubarraySum().checkSubarraySum(input.0, input.1) == output)
  }

  @Test func testChecksubarraysum5() {
    let input = ([23, 2, 6, 4, 7], 13)
    let output = false
    #expect(ContinuousSubarraySum().checkSubarraySum(input.0, input.1) == output)
  }
}

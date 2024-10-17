@testable
import Leetcode
import Testing

@Suite
struct SubarraySumEqualsKTests {
  @Test func testSubarraysum1() {
    let input = ([1, 1, 1], 2)
    let output = 2
    #expect(SubarraySumEqualsK().subarraySum(input.0, input.1) == output)
  }

  @Test func testSubarraysum3() {
    let input = ([1, 2, 3], 3)
    let output = 2
    #expect(SubarraySumEqualsK().subarraySum(input.0, input.1) == output)
  }
}

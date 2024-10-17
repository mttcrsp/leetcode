@testable
import Leetcode
import Testing

@Suite
struct SumOfSubarrayMinimumsTests {
  @Test func testSumsubarraymins1() {
    let input = [3, 1, 2, 4]
    let output = 17
    #expect(SumOfSubarrayMinimums().sumSubarrayMins(input) == output)
  }

  @Test func testSumsubarraymins2() {
    let input = [11, 81, 94, 43, 3]
    let output = 444
    #expect(SumOfSubarrayMinimums().sumSubarrayMins(input) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct RunningSumOf1DArrayTests {
  @Test func testRunningSum1() {
    let input = [1, 2, 3, 4]
    let output = [1, 3, 6, 10]
    #expect(RunningSumOf1DArray().runningSum(input) == output)
  }

  @Test func testRunningSum2() {
    let input = [1, 1, 1, 1, 1]
    let output = [1, 2, 3, 4, 5]
    #expect(RunningSumOf1DArray().runningSum(input) == output)
  }

  @Test func testRunningSum3() {
    let input = [3, 1, 2, 10, 1]
    let output = [3, 4, 6, 16, 17]
    #expect(RunningSumOf1DArray().runningSum(input) == output)
  }
}

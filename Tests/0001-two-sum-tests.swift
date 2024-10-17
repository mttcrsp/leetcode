@testable
import Leetcode
import Testing

@Suite
struct TwoSumTests {
  @Test func testTwoSum1() {
    let input = ([2, 7, 11, 15], 9)
    let output = [0, 1]
    #expect(TwoSum().twoSum(input.0, input.1) == output)
  }

  @Test func testTwoSum2() {
    let input = ([3, 2, 4], 6)
    let output = [1, 2]
    #expect(TwoSum().twoSum(input.0, input.1) == output)
  }

  @Test func testTwoSum3() {
    let input = ([3, 3], 6)
    let output = [0, 1]
    #expect(TwoSum().twoSum(input.0, input.1) == output)
  }
}

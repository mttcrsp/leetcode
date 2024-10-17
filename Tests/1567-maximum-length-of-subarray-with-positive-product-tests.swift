@testable
import Leetcode
import Testing

@Suite
struct MaximumLengthOfSubarrayWithPositiveProductTests {
  @Test func testGetMaxLen1() {
    let input = [1, -2, -3, 4]
    let output = 4
    #expect(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input) == output)
  }

  @Test func testGetMaxLen2() {
    let input = [0, 1, -2, -3, -4]
    let output = 3
    #expect(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input) == output)
  }

  @Test func testGetMaxLen3() {
    let input = [-1, -2, -3, 0, 1]
    let output = 2
    #expect(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input) == output)
  }

  @Test func testGetMaxLen4() {
    let input = [-1, 2]
    let output = 1
    #expect(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input) == output)
  }

  @Test func testGetMaxLen5() {
    let input = [1, 2, 3, 5, -6, 4, 0, 10]
    let output = 4
    #expect(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input) == output)
  }

  @Test func testGetMaxLen6() {
    let input = [-1, -2, 0, -3]
    let output = 2
    #expect(MaximumLengthOfSubarrayWithPositiveProduct().getMaxLen(input) == output)
  }
}

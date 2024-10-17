@testable
import Leetcode
import Testing

@Suite
struct SubtractTheProductAndSumOfDigitsOfAnIntegerTests {
  @Test func testSubtractProductAndSum1() {
    let input = 234
    let output = 15
    #expect(SubtractTheProductAndSumOfDigitsOfAnInteger().subtractProductAndSum(input) == output)
  }

  @Test func testSubtractProductAndSum2() {
    let input = 4421
    let output = 21
    #expect(SubtractTheProductAndSumOfDigitsOfAnInteger().subtractProductAndSum(input) == output)
  }

  @Test func testSubtractProductAndSum3() {
    let input = 114
    let output = -2
    #expect(SubtractTheProductAndSumOfDigitsOfAnInteger().subtractProductAndSum(input) == output)
  }
}

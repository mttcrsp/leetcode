@testable
import Leetcode
import Testing

@Suite
struct SumOfTwoIntegersTests {
  @Test func testGetsum1() {
    let input = (1, 2)
    let output = 3
    #expect(SumOfTwoIntegers().getSum(input.0, input.1) == output)
  }

  @Test func testGetsum2() {
    let input = (2, 3)
    let output = 5
    #expect(SumOfTwoIntegers().getSum(input.0, input.1) == output)
  }

  @Test func testGetsum3() {
    let input = (1, 3)
    let output = 4
    #expect(SumOfTwoIntegers().getSum(input.0, input.1) == output)
  }

  @Test func testGetsum4() {
    let input = (1, -2)
    let output = -1
    #expect(SumOfTwoIntegers().getSum(input.0, input.1) == output)
  }
}

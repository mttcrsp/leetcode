@testable
import Leetcode
import Testing

@Suite
struct CalculateDigitSumOfAStringTests {
  @Test func testDigitsum1() {
    let input = ("11111222223", 3)
    let output = "135"
    #expect(CalculateDigitSumOfAString().digitSum(input.0, input.1) == output)
  }

  @Test func testDigitsum2() {
    let input = ("00000000", 3)
    let output = "000"
    #expect(CalculateDigitSumOfAString().digitSum(input.0, input.1) == output)
  }

  @Test func testDigitsum3() {
    let input = ("99999999", 4)
    let output = "3636"
    #expect(CalculateDigitSumOfAString().digitSum(input.0, input.1) == output)
  }
}

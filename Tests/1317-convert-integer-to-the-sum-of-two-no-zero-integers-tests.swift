@testable
import Leetcode
import Testing

@Suite
struct ConvertIntegerToTheSumOfTwoNoZeroIntegersTests {
  @Test func testGetNoZeroIntegers1() {
    let input = 2
    let output = [1, 1]
    #expect(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input) == output)
  }

  @Test func testGetNoZeroIntegers2() {
    let input = 69
    let output = [1, 68]
    #expect(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input) == output)
  }

  @Test func testGetNoZeroIntegers3() {
    let input = 11
    let output = [2, 9]
    #expect(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input) == output)
  }

  @Test func testGetNoZeroIntegers4() {
    let input = 10000
    let output = [1, 9999]
    #expect(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input) == output)
  }

  @Test func testGetNoZeroIntegers5() {
    let input = 1010
    let output = [11, 999]
    #expect(ConvertIntegerToTheSumOfTwoNoZeroIntegers().getNoZeroIntegers(input) == output)
  }
}

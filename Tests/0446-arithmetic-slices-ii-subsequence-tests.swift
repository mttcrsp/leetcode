@testable
import Leetcode
import Testing

@Suite
struct ArithmeticSlicesIiSubsequenceTests {
  @Test func testNumberOfArithmeticSlices1() {
    let input = [2, 4, 6, 8, 10]
    let output = 7
    #expect(ArithmeticSlicesIiSubsequence().numberOfArithmeticSlices(input) == output)
  }

  @Test func testNumberOfArithmeticSlices2() {
    let input = [7, 7, 7, 7, 7]
    let output = 16
    #expect(ArithmeticSlicesIiSubsequence().numberOfArithmeticSlices(input) == output)
  }

  @Test func testNumberOfArithmeticSlices3() {
    let input = [2, 6, 2, 10, 2, 1, 0, 14]
    let output = 7
    #expect(ArithmeticSlicesIiSubsequence().numberOfArithmeticSlices(input) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct ArithmeticSubarraysTests {
  @Test func testCheckArithmeticSubarrays1() {
    let input = (
      [4, 6, 5, 9, 3, 7],
      [0, 0, 2],
      [2, 3, 5]
    )
    let output = [true, false, true]
    #expect(ArithmeticSubarrays().checkArithmeticSubarrays(input.0, input.1, input.2) == output)
  }

  @Test func testCheckArithmeticSubarrays2() {
    let input = (
      [-12, -9, -3, -12, -6, 15, 20, -25, -20, -15, -10],
      [0, 1, 6, 4, 8, 7],
      [4, 4, 9, 7, 9, 10]
    )
    let output = [false, true, false, false, true, true]
    #expect(ArithmeticSubarrays().checkArithmeticSubarrays(input.0, input.1, input.2) == output)
  }
}

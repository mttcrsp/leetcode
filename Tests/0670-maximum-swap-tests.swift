@testable
import Leetcode
import Testing

@Suite
struct MaximumSwapTests {
  @Test func testMaximumSwap1() {
    let input = 2736
    let output = 7236
    #expect(MaximumSwap().maximumSwap(input) == output)
  }

  @Test func testMaximumSwap2() {
    let input = 9973
    let output = 9973
    #expect(MaximumSwap().maximumSwap(input) == output)
  }

  @Test func testMaximumSwap3() {
    let input = 98368
    let output = 98863
    #expect(MaximumSwap().maximumSwap(input) == output)
  }
}

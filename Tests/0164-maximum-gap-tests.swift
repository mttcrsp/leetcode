@testable
import Leetcode
import Testing

@Suite
struct MaximumGapTests {
  @Test func testMaximumGap1() {
    let input = [3, 6, 9, 1]
    let output = 3
    #expect(MaximumGap().maximumGap(input) == output)
  }

  @Test func testMaximumGap2() {
    let input = [10]
    let output = 0
    #expect(MaximumGap().maximumGap(input) == output)
  }

  @Test func testMaximumGap3() {
    let input = [1, 10, 1000]
    let output = 990
    #expect(MaximumGap().maximumGap(input) == output)
  }
}

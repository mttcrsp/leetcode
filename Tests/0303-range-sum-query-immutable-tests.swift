@testable
import Leetcode
import Testing

@Suite
struct RangeSumQueryImmutableTests {
  private var numArray: NumArray {
    .init([-2, 0, 3, -5, 2, -1])
  }

  @Test func testSumRange1() {
    let input = (0, 2)
    let output = 1
    #expect(numArray.sumRange(input.0, input.1) == output)
  }

  @Test func testSumRange2() {
    let input = (2, 5)
    let output = -1
    #expect(numArray.sumRange(input.0, input.1) == output)
  }

  @Test func testSumRange3() {
    let input = (0, 5)
    let output = -3
    #expect(numArray.sumRange(input.0, input.1) == output)
  }
}

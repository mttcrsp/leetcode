@testable
import Leetcode
import Testing

@Suite
struct MaximumAverageSubarrayITests {
  @Test func testFindmaxaverage1() {
    let input = ([1, 12, -5, -6, 50, 3], 4)
    let output = 12.75
    #expect(MaximumAverageSubarrayI().findMaxAverage(input.0, input.1) == output)
  }

  @Test func testFindmaxaverage3() {
    let input = ([5], 1)
    let output = 5.0
    #expect(MaximumAverageSubarrayI().findMaxAverage(input.0, input.1) == output)
  }
}

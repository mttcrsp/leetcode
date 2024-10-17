@testable
import Leetcode
import Testing

@Suite
struct LeftAndRightSumDifferencesTests {
  @Test func testLeftrightdifference1() {
    let input = [10, 4, 8, 3]
    let output = [15, 1, 11, 22]
    #expect(LeftAndRightSumDifferences().leftRightDifference(input) == output)
  }

  @Test func testLeftrightdifference2() {
    let input = [1]
    let output = [0]
    #expect(LeftAndRightSumDifferences().leftRightDifference(input) == output)
  }
}

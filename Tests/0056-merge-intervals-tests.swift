@testable
import Leetcode
import Testing

@Suite
struct MergeIntervalsTests {
  @Test func testMerge1() {
    let input = [[1, 3], [2, 6], [8, 10], [15, 18]]
    let output = [[1, 6], [8, 10], [15, 18]]
    #expect(MergeIntervals().merge(input) == output)
  }

  @Test func testMerge2() {
    let input = [[1, 4], [4, 5]]
    let output = [[1, 5]]
    #expect(MergeIntervals().merge(input) == output)
  }

  @Test func testMerge3() {
    let input = [[1, 4], [2, 3]]
    let output = [[1, 4]]
    #expect(MergeIntervals().merge(input) == output)
  }
}

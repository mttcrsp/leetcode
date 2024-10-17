@testable
import Leetcode
import Testing

@Suite
struct AllPathsFromSourceToTargetTests {
  @Test func testAllPathsSourceTarget1() {
    let input = [[1, 2], [3], [3], []]
    let output = [[0, 1, 3], [0, 2, 3]]
    #expect(AllPathsFromSourceToTarget().allPathsSourceTarget(input) == output)
  }

  @Test func testAllPathsSourceTarget2() {
    let input = [[4, 3, 1], [3, 2, 4], [3], [4], []]
    let output = [[0, 4], [0, 3, 4], [0, 1, 3, 4], [0, 1, 2, 3, 4], [0, 1, 4]]
    #expect(AllPathsFromSourceToTarget().allPathsSourceTarget(input) == output)
  }
}

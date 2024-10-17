@testable
import Leetcode
import Testing

@Suite
struct MinimumHeightTreesTests {
  @Test func testFindMinHeightTrees1() {
    let input = (4, [[1, 0], [1, 2], [1, 3]])
    let output = [1]
    #expect(Set(MinimumHeightTrees().findMinHeightTrees(input.0, input.1)) == Set(output))
  }

  @Test func testFindMinHeightTrees2() {
    let input = (6, [[3, 0], [3, 1], [3, 2], [3, 4], [5, 4]])
    let output = [3, 4]
    #expect(Set(MinimumHeightTrees().findMinHeightTrees(input.0, input.1)) == Set(output))
  }

  @Test func testFindMinHeightTrees3() {
    let input = (7, [[0, 1], [1, 2], [1, 3], [2, 4], [3, 5], [4, 6]])
    let output = [1, 2]
    #expect(Set(MinimumHeightTrees().findMinHeightTrees(input.0, input.1)) == Set(output))
  }
}

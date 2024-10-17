@testable
import Leetcode
import Testing

@Suite
struct TreeDiameterTests {
  @Test func testTreeDiameter1() {
    let input = [[0, 1], [0, 2]]
    let output = 2
    #expect(TreeDiameter().treeDiameter(input) == output)
  }

  @Test func testTreeDiameter2() {
    let input = [[0, 1], [1, 2], [2, 3], [1, 4], [4, 5]]
    let output = 4
    #expect(TreeDiameter().treeDiameter(input) == output)
  }
}

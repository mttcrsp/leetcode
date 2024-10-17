@testable
import Leetcode
import Testing

@Suite
struct CountCompleteTreeNodesTests {
  @Test func testCountnodes1() {
    let input = TreeNode([1, 2, 3, 4, 5, 6])
    let output = 6
    #expect(CountCompleteTreeNodes().countNodes(input) == output)
  }

  @Test func testCountnodes2() {
    let input = TreeNode([])
    let output = 0
    #expect(CountCompleteTreeNodes().countNodes(input) == output)
  }

  @Test func testCountnodes3() {
    let input = TreeNode([1])
    let output = 1
    #expect(CountCompleteTreeNodes().countNodes(input) == output)
  }
}

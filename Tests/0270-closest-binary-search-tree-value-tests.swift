@testable
import Leetcode
import Testing

@Suite
struct ClosestBinarySearchTreeValueTests {
  @Test func testClosestValue1() {
    let input = (TreeNode([4, 2, 5, 1, 3]), 3.714286)
    let output = 4
    #expect(ClosestBinarySearchTreeValue().closestValue(input.0, input.1) == output)
  }

  @Test func testClosestValue2() {
    let input = (TreeNode([1]), 4.428571)
    let output = 1
    #expect(ClosestBinarySearchTreeValue().closestValue(input.0, input.1) == output)
  }

  @Test func testClosestValue3() {
    let input = (TreeNode([4, 2, 5, 1, 3]), 3.5)
    let output = 3
    #expect(ClosestBinarySearchTreeValue().closestValue(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct EvenOddTreeTests {
  @Test func testIsEvenOddTree1() {
    let input = TreeNode([1, 10, 4, 3, nil, 7, 9, 12, 8, 6, nil, nil, 2])
    let output = true
    #expect(EvenOddTree().isEvenOddTree(input) == output)
  }

  @Test func testIsEvenOddTree2() {
    let input = TreeNode([5, 4, 2, 3, 3, 7])
    let output = false
    #expect(EvenOddTree().isEvenOddTree(input) == output)
  }

  @Test func testIsEvenOddTree3() {
    let input = TreeNode([5, 9, 1, 3, 5, 7])
    let output = false
    #expect(EvenOddTree().isEvenOddTree(input) == output)
  }

  @Test func testIsEvenOddTree4() {
    let input = TreeNode([1, 10, 4, 3, nil, 7, 9, 12, 8, 8, nil, nil, 2])
    let output = false
    #expect(EvenOddTree().isEvenOddTree(input) == output)
  }
}

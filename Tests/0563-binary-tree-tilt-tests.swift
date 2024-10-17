@testable
import Leetcode
import Testing

@Suite
struct BinaryTreeTiltTests {
  @Test func testFindTilt1() {
    let input = TreeNode([1, 2, 3])
    let output = 1
    #expect(BinaryTreeTilt().findTilt(input) == output)
  }

  @Test func testFindTilt2() {
    let input = TreeNode([4, 2, 9, 3, 5, nil, 7])
    let output = 15
    #expect(BinaryTreeTilt().findTilt(input) == output)
  }

  @Test func testFindTilt3() {
    let input = TreeNode([21, 7, 14, 1, 1, 2, 2, 3, 3])
    let output = 9
    #expect(BinaryTreeTilt().findTilt(input) == output)
  }
}

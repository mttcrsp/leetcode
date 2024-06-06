@testable
import Leetcode
import XCTest

final class ConstructBinaryTreeFromStringTests: XCTestCase {
  func testStr2tree1() {
    let input = "4(2(3)(1))(6(5))"
    let output = TreeNode([4, 2, 6, 3, 1, 5])
    XCTAssertEqual(ConstructBinaryTreeFromString().str2tree(input), output)
  }

  func testStr2tree2() {
    let input = "4(2(3)(1))(6(5)(7))"
    let output = TreeNode([4, 2, 6, 3, 1, 5, 7])
    XCTAssertEqual(ConstructBinaryTreeFromString().str2tree(input), output)
  }

  func testStr2tree3() {
    let input = "-4(2(3)(1))(6(5)(7))"
    let output = TreeNode([-4, 2, 6, 3, 1, 5, 7])
    XCTAssertEqual(ConstructBinaryTreeFromString().str2tree(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class ClosestBinarySearchTreeValueTests: XCTestCase {
  func testClosestValue1() {
    let input = (TreeNode([4, 2, 5, 1, 3]), 3.714286)
    let output = 4
    XCTAssertEqual(ClosestBinarySearchTreeValue().closestValue(input.0, input.1), output)
  }

  func testClosestValue2() {
    let input = (TreeNode([1]), 4.428571)
    let output = 1
    XCTAssertEqual(ClosestBinarySearchTreeValue().closestValue(input.0, input.1), output)
  }

  func testClosestValue3() {
    let input = (TreeNode([4, 2, 5, 1, 3]), 3.5)
    let output = 3
    XCTAssertEqual(ClosestBinarySearchTreeValue().closestValue(input.0, input.1), output)
  }
}

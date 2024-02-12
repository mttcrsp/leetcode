@testable
import Leetcode
import XCTest

final class CountCompleteTreeNodesTests: XCTestCase {
  func testCountnodes1() {
    let input = TreeNode([1, 2, 3, 4, 5, 6])
    let output = 6
    XCTAssertEqual(CountCompleteTreeNodes().countNodes(input), output)
  }

  func testCountnodes2() {
    let input = TreeNode([])
    let output = 0
    XCTAssertEqual(CountCompleteTreeNodes().countNodes(input), output)
  }

  func testCountnodes3() {
    let input = TreeNode([1])
    let output = 1
    XCTAssertEqual(CountCompleteTreeNodes().countNodes(input), output)
  }
}

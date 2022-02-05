@testable
import Leetcode
import XCTest

final class SumOfRootToLeafBinaryNumbersTests: XCTestCase {
  func testSumRootToLeaf1() {
    let input = TreeNode.makeTree(with: [1, 0, 1, 0, 1, 0, 1])
    let output = 22
    XCTAssertEqual(SumOfRootToLeafBinaryNumbers().sumRootToLeaf(input), output)
  }

  func testSumRootToLeaf2() {
    let input = TreeNode.makeTree(with: [0])
    let output = 0
    XCTAssertEqual(SumOfRootToLeafBinaryNumbers().sumRootToLeaf(input), output)
  }
}

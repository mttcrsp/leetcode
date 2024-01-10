@testable
import Leetcode
import XCTest

final class LeafSimilarTreesTests: XCTestCase {
  func testTestLeafsimilar1() {
    let input = (
      TreeNode([3, 5, 1, 6, 2, 9, 8, nil, nil, 7, 4]),
      TreeNode([3, 5, 1, 6, 7, 4, 2, nil, nil, nil, nil, nil, nil, 9, 8])
    )
    let output = true
    XCTAssertEqual(LeafSimilarTrees().leafSimilar(input.0, input.1), output)
  }

  func testTestLeafsimilar2() {
    let input = (
      TreeNode([1, 2, 3]),
      TreeNode([1, 3, 2])
    )
    let output = false
    XCTAssertEqual(LeafSimilarTrees().leafSimilar(input.0, input.1), output)
  }
}

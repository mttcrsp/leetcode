@testable
import Leetcode
import XCTest

final class MaximumDifferenceBetweenNodeAndAncestorTests: XCTestCase {
  func testTestMaxancestordiff1() {
    let input = TreeNode([8, 3, 10, 1, 6, nil, 14, nil, nil, 4, 7, 13])
    let output = 7
    XCTAssertEqual(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input), output)
  }

  func testTestMaxancestordiff2() {
    let input = TreeNode([1, nil, 2, nil, 0, 3])
    let output = 3
    XCTAssertEqual(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input), output)
  }

  func testTestMaxancestordiff3() {
    let input = TreeNode([1])
    let output = 0
    XCTAssertEqual(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input), output)
  }

  func testTestMaxancestordiff4() {
    let input: TreeNode? = nil
    let output = 0
    XCTAssertEqual(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input), output)
  }

  func testTestMaxancestordiff5() {
    let input = TreeNode([2, nil, 0, nil, 4, nil, 3, nil, 1])
    let output = 4
    XCTAssertEqual(MaximumDifferenceBetweenNodeAndAncestor().maxAncestorDiff(input), output)
  }
}

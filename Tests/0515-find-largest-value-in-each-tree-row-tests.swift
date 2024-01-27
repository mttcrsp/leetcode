@testable
import Leetcode
import XCTest

final class FindLargestValueInEachTreeRowTests: XCTestCase {
  func testTestLargestvalues1() {
    let input = TreeNode([1, 3, 2, 5, 3, nil, 9])
    let output = [1, 3, 9]
    XCTAssertEqual(FindLargestValueInEachTreeRow().largestValues(input), output)
  }

  func testTestLargestvalues2() {
    let input = TreeNode([1, 2, 3])
    let output = [1, 3]
    XCTAssertEqual(FindLargestValueInEachTreeRow().largestValues(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class FindLargestValueInEachTreeRowTests: XCTestCase {
  func testLargestvalues1() {
    let input = TreeNode([1, 3, 2, 5, 3, nil, 9])
    let output = [1, 3, 9]
    XCTAssertEqual(FindLargestValueInEachTreeRow().largestValues(input), output)
  }

  func testLargestvalues2() {
    let input = TreeNode([1, 2, 3])
    let output = [1, 3]
    XCTAssertEqual(FindLargestValueInEachTreeRow().largestValues(input), output)
  }
}

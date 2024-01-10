@testable
import Leetcode
import XCTest

final class AmountOfTimeForBinaryTreeToBeInfectedTests: XCTestCase {
  func testTestAmountoftime1() {
    let input = (TreeNode([1, 5, 3, nil, 4, 10, 6, 9, 2]), 3)
    let output = 4
    XCTAssertEqual(AmountOfTimeForBinaryTreeToBeInfected().amountOfTime(input.0, input.1), output)
  }

  func testTestAmountoftime3() {
    let input = (TreeNode([1]), 1)
    let output = 0
    XCTAssertEqual(AmountOfTimeForBinaryTreeToBeInfected().amountOfTime(input.0, input.1), output)
  }
}

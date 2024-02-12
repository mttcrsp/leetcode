@testable
import Leetcode
import XCTest

final class ReorderRoutesToMakeAllPathsLeadToTheCityZeroTests: XCTestCase {
  func testMinreorder1() {
    let input = (6, [[0, 1], [1, 3], [2, 3], [4, 0], [4, 5]])
    let output = 3
    XCTAssertEqual(ReorderRoutesToMakeAllPathsLeadToTheCityZero().minReorder(input.0, input.1), output)
  }

  func testMinreorder3() {
    let input = (5, [[1, 0], [1, 2], [3, 2], [3, 4]])
    let output = 2
    XCTAssertEqual(ReorderRoutesToMakeAllPathsLeadToTheCityZero().minReorder(input.0, input.1), output)
  }

  func testMinreorder5() {
    let input = (3, [[1, 0], [2, 0]])
    let output = 0
    XCTAssertEqual(ReorderRoutesToMakeAllPathsLeadToTheCityZero().minReorder(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class CombinationSumIiTests: XCTestCase {
  func testTestCombinationsum21() {
    let input = ([10, 1, 2, 7, 6, 1, 5], 8)
    let output = Set([[1, 1, 6], [1, 2, 5], [1, 7], [2, 6]])
    XCTAssertEqual(Set(CombinationSumIi().combinationSum2(input.0, input.1)), output)
  }

  func testTestCombinationsum23() {
    let input = ([2, 5, 2, 1, 2], 5)
    let output = Set([[1, 2, 2], [5]])
    XCTAssertEqual(Set(CombinationSumIi().combinationSum2(input.0, input.1)), output)
  }
}

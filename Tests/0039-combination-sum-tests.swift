@testable
import Leetcode
import XCTest

final class CombinationSumTests: XCTestCase {
  func testCombinationsum1() {
    let input = ([2, 3, 6, 7], 7)
    let output = [[2, 2, 3], [7]]
    XCTAssertEqual(Set(CombinationSum().combinationSum(input.0, input.1)), Set(output))
  }

  func testCombinationsum2() {
    let input = ([2, 3, 5], 8)
    let output = [[2, 2, 2, 2], [2, 3, 3], [3, 5]]
    XCTAssertEqual(Set(CombinationSum().combinationSum(input.0, input.1)), Set(output))
  }

  func testCombinationsum3() {
    let input = ([2], 1)
    let output = [] as [[Int]]
    XCTAssertEqual(Set(CombinationSum().combinationSum(input.0, input.1)), Set(output))
  }
}

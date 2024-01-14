@testable
import Leetcode
import XCTest

final class CombinationSumIiiTests: XCTestCase {
  func testTestCombinationsum31() {
    let input = (3, 7)
    let output = [[1, 2, 4]]
    XCTAssertEqual(CombinationSumIii().combinationSum3(input.0, input.1), output)
  }

  func testTestCombinationsum32() {
    let input = (3, 9)
    let output = [[1, 2, 6], [1, 3, 5], [2, 3, 4]]
    XCTAssertEqual(CombinationSumIii().combinationSum3(input.0, input.1), output)
  }

  func testTestCombinationsum33() {
    let input = (4, 1)
    let output = [] as [[Int]]
    XCTAssertEqual(CombinationSumIii().combinationSum3(input.0, input.1), output)
  }

  func testTestCombinationsum34() {
    let input = (9, 45)
    let output = [[1, 2, 3, 4, 5, 6, 7, 8, 9]]
    XCTAssertEqual(CombinationSumIii().combinationSum3(input.0, input.1), output)
  }
}

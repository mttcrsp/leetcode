@testable
import Leetcode
import XCTest

final class SubsetsIiTests: XCTestCase {
  func testSubsetswithdup1() {
    let input = [1, 2, 2]
    let output = [[], [1], [1, 2], [1, 2, 2], [2], [2, 2]]
    XCTAssertEqual(Set(SubsetsIi().subsetsWithDup(input)), Set(output))
  }

  func testSubsetswithdup2() {
    let input = [0]
    let output = [[], [0]]
    XCTAssertEqual(Set(SubsetsIi().subsetsWithDup(input)), Set(output))
  }
}

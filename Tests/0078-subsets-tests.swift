@testable
import Leetcode
import XCTest

final class SubsetsTests: XCTestCase {
  func testSubsets1() {
    let input = [1, 2, 3]
    let output = [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
    XCTAssertEqual(Set(Subsets().subsets(input)), Set(output))
  }

  func testSubsets2() {
    let input = [0]
    let output = [[], [0]]
    XCTAssertEqual(Set(Subsets().subsets(input)), Set(output))
  }
}

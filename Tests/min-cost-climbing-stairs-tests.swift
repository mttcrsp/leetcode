@testable
import Leetcode
import XCTest

final class MinCostClimbingStairsTests: XCTestCase {
  func testMinCostClimbingStairs1() {
    let input = [10, 15, 20]
    let output = 15
    XCTAssertEqual(MinCostClimbingStairs().minCostClimbingStairs(input), output)
  }

  func testMinCostClimbingStairs2() {
    let input = [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]
    let output = 6
    XCTAssertEqual(MinCostClimbingStairs().minCostClimbingStairs(input), output)
  }

  func testMinCostClimbingStairs3() {
    let input = [0, 2, 2, 1]
    let output = 2
    XCTAssertEqual(MinCostClimbingStairs().minCostClimbingStairs(input), output)
  }
}

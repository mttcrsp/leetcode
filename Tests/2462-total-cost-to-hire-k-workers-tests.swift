@testable
import Leetcode
import XCTest

final class TotalCostToHireKWorkersTests: XCTestCase {
  func testTestTotalcost1() {
    let input = ([17, 12, 10, 2, 7, 2, 11, 20, 8], 3, 4)
    let output = 11
    XCTAssertEqual(TotalCostToHireKWorkers().totalCost(input.0, input.1, input.2), output)
  }

  func testTestTotalcost2() {
    let input = ([1, 2, 4, 1], 3, 3)
    let output = 4
    XCTAssertEqual(TotalCostToHireKWorkers().totalCost(input.0, input.1, input.2), output)
  }

  func testTestTotalcost3() {
    let input = ([18, 64, 12, 21, 21, 78, 36, 58, 88, 58, 99, 26, 92, 91, 53, 10, 24, 25, 20, 92, 73, 63, 51, 65, 87, 6, 17, 32, 14, 42, 46, 65, 43, 9, 75], 13, 23)
    let output = 223
    XCTAssertEqual(TotalCostToHireKWorkers().totalCost(input.0, input.1, input.2), output)
  }
}

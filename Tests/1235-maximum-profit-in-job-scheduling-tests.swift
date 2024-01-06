@testable
import Leetcode
import XCTest

final class MaximumProfitInJobSchedulingTests: XCTestCase {
  func testTestJobscheduling1() {
    let input = (
      [1, 2, 3, 3],
      [3, 4, 5, 6],
      [50, 10, 40, 70]
    )
    let output = 120
    XCTAssertEqual(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2), output)
  }

  func testTestJobscheduling2() {
    let input = (
      [1, 2, 3, 4, 6],
      [3, 5, 10, 6, 9],
      [20, 20, 100, 70, 60]
    )
    let output = 150
    XCTAssertEqual(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2), output)
  }

  func testTestJobscheduling3() {
    let input = (
      [1, 1, 1],
      [2, 3, 4],
      [5, 6, 4]
    )
    let output = 6
    XCTAssertEqual(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2), output)
  }

  func testTestJobscheduling4() {
    let input = (
      [4, 2, 4, 8, 2],
      [5, 5, 5, 10, 8],
      [1, 2, 8, 10, 4]
    )
    let output = 18
    XCTAssertEqual(MaximumProfitInJobScheduling().jobScheduling(input.0, input.1, input.2), output)
  }
}

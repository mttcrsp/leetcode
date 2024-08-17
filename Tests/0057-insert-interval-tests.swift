@testable
import Leetcode
import XCTest

final class InsertIntervalTests: XCTestCase {
  func testInsert1() {
    let input = ([[1, 3], [6, 9]], [2, 5])
    let output = [[1, 5], [6, 9]]
    XCTAssertEqual(InsertInterval().insert(input.0, input.1), output)
  }

  func testInsert2() {
    let input = ([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8])
    let output = [[1, 2], [3, 10], [12, 16]]
    XCTAssertEqual(InsertInterval().insert(input.0, input.1), output)
  }

  func testInsert3() {
    let input = ([[1, 5]], [2, 7])
    let output = [[1, 7]]
    XCTAssertEqual(InsertInterval().insert(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class BusRoutesTests: XCTestCase {
  func testNumbusestodestination1() {
    let input = ([[1, 2, 7], [3, 6, 7]], 1, 6)
    let output = 2
    XCTAssertEqual(BusRoutes().numBusesToDestination(input.0, input.1, input.2), output)
  }

  func testNumbusestodestination2() {
    let input = ([[7, 12], [4, 5, 15], [6], [15, 19], [9, 12, 13]], 15, 2)
    let output = -1
    XCTAssertEqual(BusRoutes().numBusesToDestination(input.0, input.1, input.2), output)
  }

  func testNumbusestodestination3() {
    let input = ([[7, 12], [4, 5, 15], [6], [15, 19], [9, 12, 13]], 9, 9)
    let output = 0
    XCTAssertEqual(BusRoutes().numBusesToDestination(input.0, input.1, input.2), output)
  }

  func testNumbusestodestination4() {
    let input = ([[7, 12], [4, 5, 15], [6], [15, 19], [9, 12, 13]], 7, 12)
    let output = 1
    XCTAssertEqual(BusRoutes().numBusesToDestination(input.0, input.1, input.2), output)
  }

  func testNumbusestodestination5() {
    let input = ([[7, 12], [4, 6, 15], [6], [15, 19], [9, 12, 19]], 7, 6)
    let output = 4
    XCTAssertEqual(BusRoutes().numBusesToDestination(input.0, input.1, input.2), output)
  }

  func testNumbusestodestination6() {
    let input = ([[7, 12], [4, 6, 15], [6], [15, 19], [9, 12, 19]], 99, 99)
    let output = 0
    XCTAssertEqual(BusRoutes().numBusesToDestination(input.0, input.1, input.2), output)
  }
}

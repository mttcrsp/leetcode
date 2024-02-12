@testable
import Leetcode
import XCTest

final class CarFleetTests: XCTestCase {
  func testCarfleet1() {
    let input = (12, [10, 8, 0, 5, 3], [2, 4, 1, 1, 3])
    let output = 3
    XCTAssertEqual(CarFleet().carFleet(input.0, input.1, input.2), output)
  }

  func testCarfleet2() {
    let input = (10, [3], [3])
    let output = 1
    XCTAssertEqual(CarFleet().carFleet(input.0, input.1, input.2), output)
  }

  func testCarfleet3() {
    let input = (100, [0, 2, 4], [4, 2, 1])
    let output = 1
    XCTAssertEqual(CarFleet().carFleet(input.0, input.1, input.2), output)
  }

  func testCarfleet4() {
    let input = (13, [10, 2, 5, 7, 4, 6, 11], [7, 5, 10, 5, 9, 4, 1])
    let output = 2
    XCTAssertEqual(CarFleet().carFleet(input.0, input.1, input.2), output)
  }
}

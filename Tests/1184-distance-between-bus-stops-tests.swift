@testable
import Leetcode
import XCTest

final class DistanceBetweenBusStopsTests: XCTestCase {
  func testDistanceBetweenBusStops1() {
    let input = ([1, 2, 3, 4], 0, 1)
    let output = 1
    XCTAssertEqual(DistanceBetweenBusStops().distanceBetweenBusStops(input.0, input.1, input.2), output)
  }

  func testDistanceBetweenBusStops2() {
    let input = ([1, 2, 3, 4], 0, 2)
    let output = 3
    XCTAssertEqual(DistanceBetweenBusStops().distanceBetweenBusStops(input.0, input.1, input.2), output)
  }

  func testDistanceBetweenBusStops3() {
    let input = ([1, 2, 3, 4], 0, 3)
    let output = 4
    XCTAssertEqual(DistanceBetweenBusStops().distanceBetweenBusStops(input.0, input.1, input.2), output)
  }
}

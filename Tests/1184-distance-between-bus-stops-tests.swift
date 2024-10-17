@testable
import Leetcode
import Testing

@Suite
struct DistanceBetweenBusStopsTests {
  @Test func testDistanceBetweenBusStops1() {
    let input = ([1, 2, 3, 4], 0, 1)
    let output = 1
    #expect(DistanceBetweenBusStops().distanceBetweenBusStops(input.0, input.1, input.2) == output)
  }

  @Test func testDistanceBetweenBusStops2() {
    let input = ([1, 2, 3, 4], 0, 2)
    let output = 3
    #expect(DistanceBetweenBusStops().distanceBetweenBusStops(input.0, input.1, input.2) == output)
  }

  @Test func testDistanceBetweenBusStops3() {
    let input = ([1, 2, 3, 4], 0, 3)
    let output = 4
    #expect(DistanceBetweenBusStops().distanceBetweenBusStops(input.0, input.1, input.2) == output)
  }
}

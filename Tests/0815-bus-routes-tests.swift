@testable
import Leetcode
import Testing

@Suite
struct BusRoutesTests {
  @Test func testNumbusestodestination1() {
    let input = ([[1, 2, 7], [3, 6, 7]], 1, 6)
    let output = 2
    #expect(BusRoutes().numBusesToDestination(input.0, input.1, input.2) == output)
  }

  @Test func testNumbusestodestination2() {
    let input = ([[7, 12], [4, 5, 15], [6], [15, 19], [9, 12, 13]], 15, 2)
    let output = -1
    #expect(BusRoutes().numBusesToDestination(input.0, input.1, input.2) == output)
  }

  @Test func testNumbusestodestination3() {
    let input = ([[7, 12], [4, 5, 15], [6], [15, 19], [9, 12, 13]], 9, 9)
    let output = 0
    #expect(BusRoutes().numBusesToDestination(input.0, input.1, input.2) == output)
  }

  @Test func testNumbusestodestination4() {
    let input = ([[7, 12], [4, 5, 15], [6], [15, 19], [9, 12, 13]], 7, 12)
    let output = 1
    #expect(BusRoutes().numBusesToDestination(input.0, input.1, input.2) == output)
  }

  @Test func testNumbusestodestination5() {
    let input = ([[7, 12], [4, 6, 15], [6], [15, 19], [9, 12, 19]], 7, 6)
    let output = 4
    #expect(BusRoutes().numBusesToDestination(input.0, input.1, input.2) == output)
  }

  @Test func testNumbusestodestination6() {
    let input = ([[7, 12], [4, 6, 15], [6], [15, 19], [9, 12, 19]], 99, 99)
    let output = 0
    #expect(BusRoutes().numBusesToDestination(input.0, input.1, input.2) == output)
  }
}

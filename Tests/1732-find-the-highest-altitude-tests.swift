@testable
import Leetcode
import Testing

@Suite
struct FindTheHighestAltitudeTests {
  @Test func testLargestaltitude1() {
    let input = [-5, 1, 5, 0, -7]
    let output = 1
    #expect(FindTheHighestAltitude().largestAltitude(input) == output)
  }

  @Test func testLargestaltitude2() {
    let input = [-4, -3, -2, -1, 4, 3, 2]
    let output = 0
    #expect(FindTheHighestAltitude().largestAltitude(input) == output)
  }
}

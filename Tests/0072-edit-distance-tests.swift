@testable
import Leetcode
import Testing

@Suite
struct EditDistanceTests {
  @Test func testMinDistance1() {
    let input = ("horse", "ros")
    let output = 3
    #expect(EditDistance().minDistance(input.0, input.1) == output)
  }

  @Test func testMinDistance2() {
    let input = ("intention", "execution")
    let output = 5
    #expect(EditDistance().minDistance(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct HammingDistanceTests {
  @Test func testHammingDistance1() {
    let input = (1, 4)
    let output = 2
    #expect(HammingDistance().hammingDistance(input.0, input.1) == output)
  }

  @Test func testHammingDistance2() {
    let input = (3, 1)
    let output = 1
    #expect(HammingDistance().hammingDistance(input.0, input.1) == output)
  }
}

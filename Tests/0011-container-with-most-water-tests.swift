@testable
import Leetcode
import Testing

@Suite
struct ContainerWithMostWaterTests {
  @Test func testMaxArea1() {
    let input = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    let output = 49
    #expect(ContainerWithMostWater().maxArea(input) == output)
  }

  @Test func testMaxArea2() {
    let input = [1, 1]
    let output = 1
    #expect(ContainerWithMostWater().maxArea(input) == output)
  }
}

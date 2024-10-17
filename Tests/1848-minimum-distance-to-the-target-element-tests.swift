@testable
import Leetcode
import Testing

@Suite
struct MinimumDistanceToTheTargetElementTests {
  @Test func testGetmindistance1() {
    let input = ([1, 2, 3, 4, 5], 5, 3)
    let output = 1
    #expect(MinimumDistanceToTheTargetElement().getMinDistance(input.0, input.1, input.2) == output)
  }

  @Test func testGetmindistance4() {
    let input = ([1], 1, 0)
    let output = 0
    #expect(MinimumDistanceToTheTargetElement().getMinDistance(input.0, input.1, input.2) == output)
  }

  @Test func testGetmindistance7() {
    let input = ([1, 1, 1, 1, 1, 1, 1, 1, 1, 1], 1, 0)
    let output = 0
    #expect(MinimumDistanceToTheTargetElement().getMinDistance(input.0, input.1, input.2) == output)
  }
}

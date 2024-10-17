@testable
import Leetcode
import Testing

@Suite
struct MinimumNumberOfArrowsToBurstBalloonsTests {
  @Test func testFindminarrowshots1() {
    let input = [[10, 16], [2, 8], [1, 6], [7, 12]]
    let output = 2
    #expect(MinimumNumberOfArrowsToBurstBalloons().findMinArrowShots(input) == output)
  }

  @Test func testFindminarrowshots2() {
    let input = [[1, 2], [3, 4], [5, 6], [7, 8]]
    let output = 4
    #expect(MinimumNumberOfArrowsToBurstBalloons().findMinArrowShots(input) == output)
  }

  @Test func testFindminarrowshots3() {
    let input = [[1, 2], [2, 3], [3, 4], [4, 5]]
    let output = 2
    #expect(MinimumNumberOfArrowsToBurstBalloons().findMinArrowShots(input) == output)
  }
}

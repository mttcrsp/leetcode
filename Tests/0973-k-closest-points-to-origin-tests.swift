@testable
import Leetcode
import Testing

@Suite
struct KClosestPointsToOriginTests {
  @Test func testKClosest1() {
    let input = ([[1, 3], [-2, 2]], 1)
    let output = [[-2, 2]]
    #expect(Set(KClosestPointsToOrigin().kClosest(input.0, input.1)) == Set(output))
  }

  @Test func testKClosest2() {
    let input = ([[3, 3], [5, -1], [-2, 4]], 2)
    let output = [[3, 3], [-2, 4]]
    #expect(Set(KClosestPointsToOrigin().kClosest(input.0, input.1)) == Set(output))
  }
}

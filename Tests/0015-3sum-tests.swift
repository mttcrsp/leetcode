@testable
import Leetcode
import Testing

@Suite
struct ThreeSumTests {
  @Test func testThreeSum1() {
    let input = [-1, 0, 1, 2, -1, -4]
    let output = [[-1, -1, 2], [-1, 0, 1]]
    #expect(ThreeSum().threeSum(input) == output)
  }

  @Test func testThreeSum2() {
    let input = [0, 1, 1]
    let output = [] as [[Int]]
    #expect(ThreeSum().threeSum(input) == output)
  }

  @Test func testThreeSum3() {
    let input = [0, 0, 0]
    let output = [[0, 0, 0]]
    #expect(ThreeSum().threeSum(input) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct ClimbingStairsTests {
  @Test func testClimbstairs1() {
    let input = 2
    let output = 2
    #expect(ClimbingStairs().climbStairs(input) == output)
  }

  @Test func testClimbstairs2() {
    let input = 3
    let output = 3
    #expect(ClimbingStairs().climbStairs(input) == output)
  }

  @Test func testClimbstairs3() {
    let input = 45
    let output = 1_836_311_903
    #expect(ClimbingStairs().climbStairs(input) == output)
  }
}

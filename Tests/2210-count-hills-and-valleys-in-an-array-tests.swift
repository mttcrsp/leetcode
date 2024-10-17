@testable
import Leetcode
import Testing

@Suite
struct CountHillsAndValleysInAnArrayTests {
  @Test func testCountHillValley1() {
    let input = [2, 4, 1, 1, 6, 5]
    let output = 3
    #expect(CountHillsAndValleysInAnArray().countHillValley(input) == output)
  }

  @Test func testCountHillValley2() {
    let input = [6, 6, 5, 5, 4, 1]
    let output = 0
    #expect(CountHillsAndValleysInAnArray().countHillValley(input) == output)
  }
}

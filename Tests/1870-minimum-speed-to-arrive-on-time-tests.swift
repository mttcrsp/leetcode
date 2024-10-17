@testable
import Leetcode
import Testing

@Suite
struct MinimumSpeedToArriveOnTimeTests {
  @Test func testMinspeedontime1() {
    let input = ([1, 3, 2], 6.0)
    let output = 1
    #expect(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1) == output)
  }

  @Test func testMinspeedontime2() {
    let input = ([1, 3, 2], 2.7)
    let output = 3
    #expect(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1) == output)
  }

  @Test func testMinspeedontime3() {
    let input = ([1, 3, 2], 1.9)
    let output = -1
    #expect(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1) == output)
  }

  @Test func testMinspeedontime4() {
    let input = ([1, 1, 100_000], 2.01)
    let output = 10_000_000
    #expect(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1) == output)
  }
}

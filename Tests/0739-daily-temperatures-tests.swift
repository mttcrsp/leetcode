@testable
import Leetcode
import Testing

@Suite
struct DailyTemperaturesTests {
  @Test func testDailytemperatures1() {
    let input = [73, 74, 75, 71, 69, 72, 76, 73]
    let output = [1, 1, 4, 2, 1, 1, 0, 0]
    #expect(DailyTemperatures().dailyTemperatures(input) == output)
  }

  @Test func testDailytemperatures2() {
    let input = [30, 40, 50, 60]
    let output = [1, 1, 1, 0]
    #expect(DailyTemperatures().dailyTemperatures(input) == output)
  }

  @Test func testDailytemperatures3() {
    let input = [30, 60, 90]
    let output = [1, 1, 0]
    #expect(DailyTemperatures().dailyTemperatures(input) == output)
  }

  @Test func testDailytemperatures4() {
    let input = [30, 30, 30]
    let output = [0, 0, 0]
    #expect(DailyTemperatures().dailyTemperatures(input) == output)
  }

  @Test func testDailytemperatures5() {
    let input = [34, 33, 32, 31, 30]
    let output = [0, 0, 0, 0, 0]
    #expect(DailyTemperatures().dailyTemperatures(input) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct DayOfTheWeekTests {
  @Test func testDayOfTheWeek1() {
    let input = (31, 8, 2019)
    let output = "Saturday"
    #expect(DayOfTheWeek().dayOfTheWeek(input.0, input.1, input.2) == output)
  }

  @Test func testDayOfTheWeek2() {
    let input = (18, 7, 1999)
    let output = "Sunday"
    #expect(DayOfTheWeek().dayOfTheWeek(input.0, input.1, input.2) == output)
  }

  @Test func testDayOfTheWeek3() {
    let input = (15, 8, 1993)
    let output = "Sunday"
    #expect(DayOfTheWeek().dayOfTheWeek(input.0, input.1, input.2) == output)
  }
}

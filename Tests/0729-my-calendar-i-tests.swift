@testable
import Leetcode
import Testing

@Suite
struct MyCalendarITests {
  @Test func testMyCalendar1() {
    let calendar = MyCalendar()
    #expect(calendar.book(10, 20))
    #expect(!calendar.book(15, 25))
    #expect(calendar.book(20, 30))
  }
}

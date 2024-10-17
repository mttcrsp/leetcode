@testable
import Leetcode
import Testing

@Suite
struct NumberOfRecentCallsTests {
  @Test func testPing1() {
    let counter = RecentCounter()
    #expect(counter.ping(1) == 1)
    #expect(counter.ping(100) == 2)
    #expect(counter.ping(3001) == 3)
    #expect(counter.ping(3002) == 3)
  }
}

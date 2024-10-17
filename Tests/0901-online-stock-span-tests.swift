@testable
import Leetcode
import Testing

@Suite
struct OnlineStockSpanTests {
  @Test func testNext1() {
    let spanner = StockSpanner()
    #expect(spanner.next(100) == 1)
    #expect(spanner.next(80) == 1)
    #expect(spanner.next(60) == 1)
    #expect(spanner.next(70) == 2)
    #expect(spanner.next(60) == 1)
    #expect(spanner.next(75) == 4)
    #expect(spanner.next(85) == 6)
  }
}

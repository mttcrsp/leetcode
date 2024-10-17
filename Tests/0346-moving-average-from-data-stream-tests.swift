@testable
import Leetcode
import Testing

@Suite
struct MovingAverageTests {
  @Test func testMovingAverage1() {
    let movingAverage = MovingAverage(3)
    #expect(movingAverage.next(1) == 1)
    #expect(movingAverage.next(10) == 5.5)
    #expect(movingAverage.next(3) == 4.66667)
    #expect(movingAverage.next(5) == 6)
  }
}

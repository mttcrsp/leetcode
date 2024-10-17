@testable
import Leetcode
import Testing

@Suite
struct HitCounterTests {
  @Test func testHitCounter1() {
    let hitCounter = HitCounter()
    hitCounter.hit(1)
    hitCounter.hit(2)
    hitCounter.hit(3)
    #expect(hitCounter.getHits(4) == 3)
    hitCounter.hit(300)
    #expect(hitCounter.getHits(300) == 4)
    #expect(hitCounter.getHits(301) == 3)
  }
}

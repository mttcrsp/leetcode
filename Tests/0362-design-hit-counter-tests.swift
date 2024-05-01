@testable
import Leetcode
import XCTest

final class HitCounterTests: XCTestCase {
  func testHitCounter1() {
    let hitCounter = HitCounter()
    hitCounter.hit(1)
    hitCounter.hit(2)
    hitCounter.hit(3)
    XCTAssertEqual(hitCounter.getHits(4), 3)
    hitCounter.hit(300)
    XCTAssertEqual(hitCounter.getHits(300), 4)
    XCTAssertEqual(hitCounter.getHits(301), 3)
  }
}

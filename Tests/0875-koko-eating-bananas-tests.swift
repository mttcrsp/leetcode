@testable
import Leetcode
import Testing

@Suite
struct KokoEatingBananasTests {
  @Test func testMineatingspeed1() {
    let input = ([3, 6, 7, 11], 8)
    let output = 4
    #expect(KokoEatingBananas().minEatingSpeed(input.0, input.1) == output)
  }

  @Test func testMineatingspeed2() {
    let input = ([30, 11, 23, 4, 20], 5)
    let output = 30
    #expect(KokoEatingBananas().minEatingSpeed(input.0, input.1) == output)
  }

  @Test func testMineatingspeed3() {
    let input = ([30, 11, 23, 4, 20], 6)
    let output = 23
    #expect(KokoEatingBananas().minEatingSpeed(input.0, input.1) == output)
  }
}

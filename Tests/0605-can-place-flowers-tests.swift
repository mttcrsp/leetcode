@testable
import Leetcode
import Testing

@Suite
struct CanPlaceFlowersTests {
  @Test func testCanplaceflowers1() {
    let input = ([1, 0, 0, 0, 1], 1)
    let output = true
    #expect(CanPlaceFlowers().canPlaceFlowers(input.0, input.1) == output)
  }

  @Test func testCanplaceflowers2() {
    let input = ([1, 0, 0, 0, 1], 2)
    let output = false
    #expect(CanPlaceFlowers().canPlaceFlowers(input.0, input.1) == output)
  }

  @Test func testCanplaceflowers3() {
    let input = ([1, 1, 1, 1, 1], 0)
    let output = true
    #expect(CanPlaceFlowers().canPlaceFlowers(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct CountingBitsTests {
  @Test func testCountbits1() {
    let input = 2
    let output = [0, 1, 1]
    #expect(CountingBits().countBits(input) == output)
  }

  @Test func testCountbits2() {
    let input = 5
    let output = [0, 1, 1, 2, 1, 2]
    #expect(CountingBits().countBits(input) == output)
  }

  @Test func testCountbits3() {
    let input = 0
    let output = [0]
    #expect(CountingBits().countBits(input) == output)
  }
}

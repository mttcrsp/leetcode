@testable
import Leetcode
import Testing

@Suite
struct ReverseBitsTests {
  // swiftformat:disable numberFormatting
  @Test func testReversebits1() {
    let input = 0b00000010100101000001111010011100
    let output = 0b00111001011110000010100101000000
    #expect(ReverseBits().reverseBits(input) == output)
  }

  @Test func testReversebits2() {
    let input = 0b11111111111111111111111111111101
    let output = 0b10111111111111111111111111111111
    #expect(ReverseBits().reverseBits(input) == output)
  }
  // swiftformat:enable numberFormatting
}

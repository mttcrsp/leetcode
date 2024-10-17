@testable
import Leetcode
import Testing

@Suite
struct ZigzagConversionTests {
  @Test func testConvert1() {
    let input = ("PAYPALISHIRING", 0)
    let output = "PAYPALISHIRING"
    #expect(ZigzagConversion().convert(input.0, input.1) == output)
  }

  @Test func testConvert2() {
    let input = ("PAYPALISHIRING", 1)
    let output = "PAYPALISHIRING"
    #expect(ZigzagConversion().convert(input.0, input.1) == output)
  }

  @Test func testConvert() {
    let input = ("PAYPALISHIRING", 3)
    let output = "PAHNAPLSIIGYIR"
    #expect(ZigzagConversion().convert(input.0, input.1) == output)
  }

  @Test func testConvert4() {
    let input = ("PAYPALISHIRING", 4)
    let output = "PINALSIGYAHRPI"
    #expect(ZigzagConversion().convert(input.0, input.1) == output)
  }
}

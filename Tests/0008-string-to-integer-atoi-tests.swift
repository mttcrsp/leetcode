@testable
import Leetcode
import Testing

@Suite
struct StringToIntegerAtoiTests {
  @Test func testMyAtoi1() {
    let input = "42"
    let output = 42
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi2() {
    let input = "   -42"
    let output = -42
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi3() {
    let input = "4193 with words"
    let output = 4193
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi4() {
    let input = "words and 987"
    let output = 0
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi5() {
    let input = "-91283472332"
    let output = -2_147_483_648
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi6() {
    let input = "20000000000000000000"
    let output = 2_147_483_647
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi7() {
    let input = "9223372036854775808"
    let output = 2_147_483_647
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }

  @Test func testMyAtoi8() {
    let input = "-9223372036854775808"
    let output = -2_147_483_648
    #expect(StringToIntegerAtoi().myAtoi(input) == output)
  }
}

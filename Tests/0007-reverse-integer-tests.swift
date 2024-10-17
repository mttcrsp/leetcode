@testable
import Leetcode
import Testing

@Suite
struct ReverseIntegerTests {
  @Test func testReverse1() {
    let input = 0
    let output = 0
    #expect(ReverseInteger().reverse(input) == output)
  }

  @Test func testReverse2() {
    let input = 123
    let output = 321
    #expect(ReverseInteger().reverse(input) == output)
  }

  @Test func testReverse3() {
    let input = 1200
    let output = 21
    #expect(ReverseInteger().reverse(input) == output)
  }

  @Test func testReverse4() {
    let input = -123
    let output = -321
    #expect(ReverseInteger().reverse(input) == output)
  }

  @Test func testReverse5() {
    let input = -1230
    let output = -321
    #expect(ReverseInteger().reverse(input) == output)
  }

  @Test func testReverse6() {
    let input = 1_534_236_469
    let output = 0
    #expect(ReverseInteger().reverse(input) == output)
  }
}

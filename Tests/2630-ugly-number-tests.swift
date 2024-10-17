@testable
import Leetcode
import Testing

@Suite
struct UglyNumberTests {
  @Test func testIsUgly1() {
    let input = 6
    let output = true
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly2() {
    let input = 8
    let output = true
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly3() {
    let input = 14
    let output = false
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly4() {
    let input = 1
    let output = true
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly5() {
    let input = 7
    let output = false
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly6() {
    let input = 15
    let output = true
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly7() {
    let input = 16
    let output = true
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly8() {
    let input = 22
    let output = false
    #expect(UglyNumber().isUgly(input) == output)
  }

  @Test func testIsUgly9() {
    let input = 0
    let output = false
    #expect(UglyNumber().isUgly(input) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct PerfectNumberTests {
  @Test func testCheckPerfectNumber1() {
    let input = 28
    let output = true
    #expect(PerfectNumber().checkPerfectNumber(input) == output)
  }

  @Test func testCheckPerfectNumber2() {
    let input = 6
    let output = true
    #expect(PerfectNumber().checkPerfectNumber(input) == output)
  }

  @Test func testCheckPerfectNumber3() {
    let input = 496
    let output = true
    #expect(PerfectNumber().checkPerfectNumber(input) == output)
  }

  @Test func testCheckPerfectNumber4() {
    let input = 8128
    let output = true
    #expect(PerfectNumber().checkPerfectNumber(input) == output)
  }

  @Test func testCheckPerfectNumber5() {
    let input = 2
    let output = false
    #expect(PerfectNumber().checkPerfectNumber(input) == output)
  }

  @Test func testCheckPerfectNumber6() {
    let input = 99_999_996
    let output = false
    #expect(PerfectNumber().checkPerfectNumber(input) == output)
  }
}

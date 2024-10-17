@testable
import Leetcode
import Testing

@Suite
struct ValidNumberTests {
  @Test func testIsNumber1() {
    for input in ["0", "2", "0089", "-0.1", "+3.14", "4.", "-.9", "2e10", "-90E3", "3e+7", "+6e-1", "53.5e93", "-123.456e789"] {
      #expect(ValidNumber().isNumber(input))
    }
  }

  @Test func testIsNumber2() {
    for input in ["e", ".", "abc", "1a", "1e", "e3", "99e2.5", "--6", "-+3", "95a54e53"] {
      #expect(ValidNumber().isNumber(input))
    }
  }
}

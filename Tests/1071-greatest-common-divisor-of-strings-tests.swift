@testable
import Leetcode
import Testing

@Suite
struct GreatestCommonDivisorOfStringsTests {
  @Test func testGcdofstrings1() {
    let input = ("ABCABC", "ABC")
    let output = "ABC"
    #expect(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1) == output)
  }

  @Test func testGcdofstrings2() {
    let input = ("ABABAB", "ABAB")
    let output = "AB"
    #expect(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1) == output)
  }

  @Test func testgcdofstrings3() {
    let input = ("leet", "code")
    let output = ""
    #expect(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1) == output)
  }

  @Test func testgcdofstrings4() {
    let input = ("leet", "leet")
    let output = "leet"
    #expect(GreatestCommonDivisorOfStrings().gcdOfStrings(input.0, input.1) == output)
  }
}

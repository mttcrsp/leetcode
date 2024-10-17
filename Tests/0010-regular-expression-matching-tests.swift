@testable
import Leetcode
import Testing

@Suite
struct RegularExpressionMatchingTests {
  @Test func testIsMatch1() {
    let input = ("aa", "a")
    let output = false
    #expect(RegularExpressionMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch2() {
    let input = ("aa", "a*")
    let output = true
    #expect(RegularExpressionMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch3() {
    let input = ("ab", ".*")
    let output = true
    #expect(RegularExpressionMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch4() {
    let input = ("aaaaaaaaaaaaaaaaaaab", "a*a*a*a*a*a*a*a*a*b")
    let output = true
    #expect(RegularExpressionMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch5() {
    let input = ("aaaaaaaaaaaaaaaaaaac", "a*a*a*a*a*a*a*a*a*b")
    let output = false
    #expect(RegularExpressionMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch6() {
    let input = ("ab", ".*c")
    let output = false
    #expect(RegularExpressionMatching().isMatch(input.0, input.1) == output)
  }
}

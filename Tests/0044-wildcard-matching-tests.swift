@testable
import Leetcode
import Testing

@Suite
struct WildcardMatchingTests {
  @Test func testIsMatch1() {
    let input = ("aa", "a")
    let output = false
    #expect(WildcardMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch2() {
    let input = ("aa", "*")
    let output = true
    #expect(WildcardMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch3() {
    let input = ("cb", "?a")
    let output = false
    #expect(WildcardMatching().isMatch(input.0, input.1) == output)
  }

  @Test func testIsMatch4() {
    let input = ("acdcb", "a*c?b")
    let output = false
    #expect(WildcardMatching().isMatch(input.0, input.1) == output)
  }
}

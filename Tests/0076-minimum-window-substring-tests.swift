@testable
import Leetcode
import Testing

@Suite
struct MinimumWindowSubstringTests {
  @Test func testMinWindow1() {
    let input = ("ADOBECODEBANC", "ABC")
    let output = "BANC"
    #expect(MinimumWindowSubstring().minWindow(input.0, input.1) == output)
  }

  @Test func testMinWindow2() {
    let input = ("a", "a")
    let output = "a"
    #expect(MinimumWindowSubstring().minWindow(input.0, input.1) == output)
  }

  @Test func testMinWindow3() {
    let input = ("a", "aa")
    let output = ""
    #expect(MinimumWindowSubstring().minWindow(input.0, input.1) == output)
  }
}

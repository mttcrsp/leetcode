@testable
import Leetcode
import Testing

@Suite
struct ImplementStrstrTests {
  @Test func testStrStr1() {
    let input = ("hello", "ll")
    let output = 2
    #expect(ImplementStrstr().strStr(input.0, input.1) == output)
  }

  @Test func testStrStr2() {
    let input = ("aaaaa", "bba")
    let output = -1
    #expect(ImplementStrstr().strStr(input.0, input.1) == output)
  }

  @Test func testStrStr3() {
    let input = ("", "")
    let output = 0
    #expect(ImplementStrstr().strStr(input.0, input.1) == output)
  }

  @Test func testStrStr4() {
    let input = ("aaaa", "aaaa")
    let output = 0
    #expect(ImplementStrstr().strStr(input.0, input.1) == output)
  }
}

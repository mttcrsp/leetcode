@testable
import Leetcode
import Testing

@Suite
struct IsSubsequenceTests {
  @Test func testIsSubsequence1() {
    let input = ("abc", "ahbgdc")
    let output = true
    #expect(IsSubsequence().isSubsequence(input.0, input.1) == output)
  }

  @Test func testIsSubsequence2() {
    let input = ("axc", "ahbgdc")
    let output = false
    #expect(IsSubsequence().isSubsequence(input.0, input.1) == output)
  }

  @Test func testIsSubsequence3() {
    let input = ("ciao", "ciciao")
    let output = true
    #expect(IsSubsequence().isSubsequence(input.0, input.1) == output)
  }

  @Test func testIsSubsequence4() {
    let input = ("", "")
    let output = true
    #expect(IsSubsequence().isSubsequence(input.0, input.1) == output)
  }

  @Test func testIsSubsequence5() {
    let input = ("", "asdf")
    let output = true
    #expect(IsSubsequence().isSubsequence(input.0, input.1) == output)
  }

  @Test func testIsSubsequence6() {
    let input = ("asdf", "")
    let output = false
    #expect(IsSubsequence().isSubsequence(input.0, input.1) == output)
  }
}

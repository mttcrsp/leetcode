@testable
import Leetcode
import Testing

@Suite
struct CheckWhetherTwoStringsAreAlmostEquivalentTests {
  @Test func testCheckalmostequivalent1() {
    let input = ("aaaa", "bccb")
    let output = false
    #expect(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1) == output)
  }

  @Test func testCheckalmostequivalent3() {
    let input = ("abcdeef", "abaaacc")
    let output = true
    #expect(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1) == output)
  }

  @Test func testCheckalmostequivalent5() {
    let input = ("cccddabba", "babababab")
    let output = true
    #expect(CheckWhetherTwoStringsAreAlmostEquivalent().checkAlmostEquivalent(input.0, input.1) == output)
  }
}

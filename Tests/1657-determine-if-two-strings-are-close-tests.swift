@testable
import Leetcode
import Testing

@Suite
struct DetermineIfTwoStringsAreCloseTests {
  @Test func testClosestrings1() {
    let input = ("abc", "bca")
    let output = true
    #expect(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1) == output)
  }

  @Test func testClosestrings2() {
    let input = ("a", "aa")
    let output = false
    #expect(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1) == output)
  }

  @Test func testClosestrings3() {
    let input = ("cabbba", "abbccc")
    let output = true
    #expect(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1) == output)
  }

  @Test func testClosestrings4() {
    let input = ("uau", "ssx")
    let output = false
    #expect(DetermineIfTwoStringsAreClose().closeStrings(input.0, input.1) == output)
  }
}

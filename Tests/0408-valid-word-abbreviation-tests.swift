@testable
import Leetcode
import Testing

@Suite
struct ValidWordAbbreviationTests {
  @Test func testValidWordAbbreviation1() {
    let input = ("internationalization", "i12iz4n")
    let output = true
    #expect(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1) == output)
  }

  @Test func testValidWordAbbreviation2() {
    let input = ("apple", "a2e")
    let output = false
    #expect(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1) == output)
  }

  @Test func testValidWordAbbreviation3() {
    let input = ("s010n", "substitution")
    let output = false
    #expect(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1) == output)
  }

  @Test func testValidWordAbbreviation4() {
    let input = ("internationalization", "i5a11o1")
    let output = true
    #expect(ValidWordAbbreviation().validWordAbbreviation(input.0, input.1) == output)
  }
}

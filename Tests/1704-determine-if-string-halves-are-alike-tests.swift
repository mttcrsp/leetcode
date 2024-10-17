@testable
import Leetcode
import Testing

@Suite
struct DetermineIfStringHalvesAreAlikeTests {
  @Test func testHalvesarealike1() {
    let input = "book"
    let output = true
    #expect(DetermineIfStringHalvesAreAlike().halvesAreAlike(input) == output)
  }

  @Test func testHalvesarealike2() {
    let input = "textbook"
    let output = false
    #expect(DetermineIfStringHalvesAreAlike().halvesAreAlike(input) == output)
  }

  @Test func testHalvesarealike3() {
    let input = "etexbook"
    let output = true
    #expect(DetermineIfStringHalvesAreAlike().halvesAreAlike(input) == output)
  }
}

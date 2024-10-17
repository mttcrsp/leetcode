@testable
import Leetcode
import Testing

@Suite
struct CheckIfAllCharactersHaveEqualNumberOfOccurrencesTests {
  @Test func testAreOccurrencesEqual1() {
    let input = "abacbc"
    let output = true
    #expect(CheckIfAllCharactersHaveEqualNumberOfOccurrences().areOccurrencesEqual(input) == output)
  }

  @Test func testAreOccurrencesEqual2() {
    let input = "aaabb"
    let output = false
    #expect(CheckIfAllCharactersHaveEqualNumberOfOccurrences().areOccurrencesEqual(input) == output)
  }
}

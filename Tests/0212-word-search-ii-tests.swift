@testable
import Leetcode
import Testing

@Suite
struct WordSearchIiTests {
  @Test func testFindwords1() {
    let input = (
      [
        ["o", "a", "a", "n"],
        ["e", "t", "a", "e"],
        ["i", "h", "k", "r"],
        ["i", "f", "l", "v"],
      ] as [[Character]],
      ["oath", "pea", "eat", "rain"]
    )
    let output = ["eat", "oath"]
    #expect(Set(WordSearchIi().findWords(input.0, input.1)) == Set(output))
  }

  @Test func testFindwords2() {
    let input = (
      [
        ["a", "b"],
        ["c", "d"],
      ] as [[Character]],
      ["abcb"]
    )
    let output = [] as [String]
    #expect(Set(WordSearchIi().findWords(input.0, input.1)) == Set(output))
  }

  @Test func testFindwords3() {
    let input = (
      [
        ["o", "a", "a", "n"],
        ["e", "t", "a", "e"],
        ["i", "h", "k", "r"],
        ["i", "f", "l", "v"],
      ] as [[Character]],
      ["oath", "pea", "eat", "rain", "hklf", "hf"]
    )
    let output = ["oath", "eat", "hklf", "hf"]
    #expect(Set(WordSearchIi().findWords(input.0, input.1)) == Set(output))
  }
}

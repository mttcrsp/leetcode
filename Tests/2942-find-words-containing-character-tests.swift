@testable
import Leetcode
import Testing

@Suite
struct FindWordsContainingCharacterTests {
  @Test func testFindwordscontaining1() {
    let input = (["leet", "code"], "e" as Character)
    let output = [0, 1]
    #expect(FindWordsContainingCharacter().findWordsContaining(input.0, input.1) == output)
  }

  @Test func testFindwordscontaining3() {
    let input = (["abc", "bcd", "aaaa", "cbc"], "a" as Character)
    let output = [0, 2]
    #expect(FindWordsContainingCharacter().findWordsContaining(input.0, input.1) == output)
  }

  @Test func testFindwordscontaining5() {
    let input = (["abc", "bcd", "aaaa", "cbc"], "z" as Character)
    let output = [] as [Int]
    #expect(FindWordsContainingCharacter().findWordsContaining(input.0, input.1) == output)
  }
}

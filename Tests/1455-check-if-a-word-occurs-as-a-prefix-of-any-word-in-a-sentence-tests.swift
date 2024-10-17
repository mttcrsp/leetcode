@testable
import Leetcode
import Testing

@Suite
struct CheckIfAWordOccursAsAPrefixOfAnyWordInASentenceTests {
  @Test func testIsPrefixOfWord1() {
    let input = ("i love eating burger", "burg")
    let output = 4
    #expect(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1) == output)
  }

  @Test func testIsPrefixOfWord2() {
    let input = ("this problem is an easy problem", "pro")
    let output = 2
    #expect(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1) == output)
  }

  @Test func testIsPrefixOfWord3() {
    let input = ("i am tired", "you")
    let output = -1
    #expect(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1) == output)
  }

  @Test func testIsPrefixOfWord4() {
    let input = ("i use triple pillow", "pill")
    let output = 4
    #expect(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1) == output)
  }

  @Test func testIsPrefixOfWord5() {
    let input = ("hello from the other side", "they")
    let output = -1
    #expect(CheckIfAWordOccursAsAPrefixOfAnyWordInASentence().isPrefixOfWord(input.0, input.1) == output)
  }
}

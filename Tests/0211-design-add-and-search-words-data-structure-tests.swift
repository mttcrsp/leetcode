@testable
import Leetcode
import Testing

@Suite
struct DesignAddAndSearchWordsDataStructureTests {
  @Test func testAddword1() {
    let dictionary = WordDictionary()
    dictionary.addWord("bad")
    dictionary.addWord("dad")
    dictionary.addWord("mad")
    #expect(!dictionary.search("pad"))
    #expect(dictionary.search("bad"))
    #expect(dictionary.search(".ad"))
    #expect(dictionary.search("b.."))
  }
}

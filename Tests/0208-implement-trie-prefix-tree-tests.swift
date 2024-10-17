@testable
import Leetcode
import Testing

@Suite
struct ImplementTriePrefixTreeTests {
  @Test func testInsert1() {
    let trie = Trie()
    trie.insert("apple")
    #expect(trie.search("apple"))
    #expect(trie.search("apple"))
    #expect(!trie.search("app"))
    #expect(trie.startsWith("app"))

    trie.insert("app")
    #expect(trie.search("app"))
  }
}

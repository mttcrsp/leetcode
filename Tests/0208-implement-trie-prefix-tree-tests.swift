@testable
import Leetcode
import XCTest

final class ImplementTriePrefixTreeTests: XCTestCase {
  func testTestInsert1() {
    let trie = Trie()
    trie.insert("apple")
    XCTAssertTrue(trie.search("apple"))
    XCTAssertTrue(trie.search("apple"))
    XCTAssertFalse(trie.search("app"))
    XCTAssertTrue(trie.startsWith("app"))

    trie.insert("app")
    XCTAssertTrue(trie.search("app"))
  }
}

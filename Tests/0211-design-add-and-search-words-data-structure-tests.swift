@testable
import Leetcode
import XCTest

final class DesignAddAndSearchWordsDataStructureTests: XCTestCase {
  func testAddword1() {
    let dictionary = WordDictionary()
    dictionary.addWord("bad")
    dictionary.addWord("dad")
    dictionary.addWord("mad")
    XCTAssertFalse(dictionary.search("pad"))
    XCTAssertTrue(dictionary.search("bad"))
    XCTAssertTrue(dictionary.search(".ad"))
    XCTAssertTrue(dictionary.search("b.."))
  }
}

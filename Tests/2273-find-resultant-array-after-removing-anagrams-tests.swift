@testable
import Leetcode
import XCTest

final class FindResultantArrayAfterRemovingAnagramsTests: XCTestCase {
  func testRemoveAnagrams1() {
    let input = ["abba", "baba", "bbaa", "cd", "cd"]
    let output = ["abba", "cd"]
    XCTAssertEqual(FindResultantArrayAfterRemovingAnagrams().removeAnagrams(input), output)
  }

  func testRemoveAnagrams2() {
    let input = ["a", "b", "c", "d", "e"]
    let output = ["a", "b", "c", "d", "e"]
    XCTAssertEqual(FindResultantArrayAfterRemovingAnagrams().removeAnagrams(input), output)
  }
}

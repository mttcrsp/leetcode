@testable
import Leetcode
import Testing

@Suite
struct FindResultantArrayAfterRemovingAnagramsTests {
  @Test func testRemoveAnagrams1() {
    let input = ["abba", "baba", "bbaa", "cd", "cd"]
    let output = ["abba", "cd"]
    #expect(FindResultantArrayAfterRemovingAnagrams().removeAnagrams(input) == output)
  }

  @Test func testRemoveAnagrams2() {
    let input = ["a", "b", "c", "d", "e"]
    let output = ["a", "b", "c", "d", "e"]
    #expect(FindResultantArrayAfterRemovingAnagrams().removeAnagrams(input) == output)
  }
}

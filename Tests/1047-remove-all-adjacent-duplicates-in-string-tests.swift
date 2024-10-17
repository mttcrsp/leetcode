@testable
import Leetcode
import Testing

@Suite
struct RemoveAllAdjacentDuplicatesInStringTests {
  @Test func testRemoveDuplicates1() {
    let input = "abbaca"
    let output = "ca"
    #expect(RemoveAllAdjacentDuplicatesInString().removeDuplicates(input) == output)
  }

  @Test func testRemoveDuplicates2() {
    let input = "abbacaa"
    let output = "c"
    #expect(RemoveAllAdjacentDuplicatesInString().removeDuplicates(input) == output)
  }

  @Test func testRemoveDuplicates3() {
    let input = "cbbaabbcaa"
    let output = ""
    #expect(RemoveAllAdjacentDuplicatesInString().removeDuplicates(input) == output)
  }
}

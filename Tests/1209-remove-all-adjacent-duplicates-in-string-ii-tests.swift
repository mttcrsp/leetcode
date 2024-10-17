@testable
import Leetcode
import Testing

@Suite
struct RemoveAllAdjacentDuplicatesInStringIiTests {
  @Test func testRemoveDuplicates1() {
    let input = ("abcd", 2)
    let output = "abcd"
    #expect(RemoveAllAdjacentDuplicatesInStringIi().removeDuplicates(input.0, input.1) == output)
  }

  @Test func testRemoveDuplicates2() {
    let input = ("deeedbbcccbdaa", 3)
    let output = "aa"
    #expect(RemoveAllAdjacentDuplicatesInStringIi().removeDuplicates(input.0, input.1) == output)
  }

  @Test func testRemoveDuplicates3() {
    let input = ("pbbcggttciiippooaais", 2)
    let output = "ps"
    #expect(RemoveAllAdjacentDuplicatesInStringIi().removeDuplicates(input.0, input.1) == output)
  }
}

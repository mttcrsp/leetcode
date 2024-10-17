@testable
import Leetcode
import Testing

@Suite
struct RemoveDuplicatesFromSortedListIiTests {
  @Test func testDeleteduplicates1() {
    let input = ListNode([1, 2, 3, 3, 4, 4, 5])
    let output = ListNode([1, 2, 5])
    #expect(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testDeleteduplicates2() {
    let input = ListNode([1, 1, 1, 2, 3])
    let output = ListNode([2, 3])
    #expect(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testDeleteduplicates3() {
    let input = ListNode([1, 2, 2])
    let output = ListNode([1])
    #expect(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testDeleteduplicates4() {
    let input = ListNode([1])
    let output = ListNode([1])
    #expect(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testDeleteduplicates5() {
    let input: ListNode? = nil
    let output: ListNode? = nil
    #expect(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription == output?.debugDescription)
  }

  @Test func testDeleteduplicates6() {
    let input = ListNode([1, 1, 1])
    let output: ListNode? = nil
    #expect(RemoveDuplicatesFromSortedListIi().deleteDuplicates(input)?.debugDescription == output?.debugDescription)
  }
}

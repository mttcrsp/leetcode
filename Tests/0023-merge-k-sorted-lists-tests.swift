@testable
import Leetcode
import Testing

@Suite
struct MergeKSortedListsTests {
  @Test func testMergeKLists1() {
    let input = [[1, 4, 5], [1, 3, 4], [2, 6]].map(ListNode.init)
    let output = ListNode([1, 1, 2, 3, 4, 4, 5, 6])
    #expect(MergeKSortedLists().mergeKLists(input) == output)
  }

  @Test func testMergeKLists2() {
    let input = [] as [ListNode?]
    let output: ListNode? = nil
    #expect(MergeKSortedLists().mergeKLists(input) == output)
  }

  @Test func testMergeKLists3() {
    let input = [nil] as [ListNode?]
    let output: ListNode? = nil
    #expect(MergeKSortedLists().mergeKLists(input) == output)
  }

  @Test func testMergeKLists4() {
    let input = [[], [1]].map(ListNode.init)
    let output = ListNode([1])
    #expect(MergeKSortedLists().mergeKLists(input) == output)
  }
}

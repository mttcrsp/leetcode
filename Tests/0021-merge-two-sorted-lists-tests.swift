@testable
import Leetcode
import Testing

@Suite
struct MergeTwoSortedListsTests {
  @Test func testMergeTwoLists1() {
    let input = (ListNode.makeList([1, 2, 4]), ListNode.makeList([1, 3, 4]))
    let output = MergeTwoSortedLists().mergeTwoLists(input.0, input.1)
    #expect(output?.val == 1)
    #expect(output?.next?.val == 1)
    #expect(output?.next?.next?.val == 2)
    #expect(output?.next?.next?.next?.val == 3)
    #expect(output?.next?.next?.next?.next?.val == 4)
    #expect(output?.next?.next?.next?.next?.next?.val == 4)
  }

  @Test func testMergeTwoLists2() {
    let input = (ListNode.makeList([]), ListNode.makeList([]))
    let output = MergeTwoSortedLists().mergeTwoLists(input.0, input.1)
    #expect(output == nil)
  }

  @Test func testMergeTwoLists3() {
    let input = (ListNode.makeList([]), ListNode.makeList([0]))
    let output = MergeTwoSortedLists().mergeTwoLists(input.0, input.1)
    #expect(output?.val == 0)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct ReorderListTests {
  @Test func testReorderlist1() {
    let input = [1, 2, 3, 4]
    let head = ListNode.makeList(input)
    ReorderList().reorderList(head)
    #expect(head?.val == 1)
    #expect(head?.next?.val == 4)
    #expect(head?.next?.next?.val == 2)
    #expect(head?.next?.next?.next?.val == 3)
    #expect(head?.next?.next?.next?.next == nil)
  }

  @Test func testReorderlist2() {
    let input = [1, 2, 3, 4, 5]
    let head = ListNode.makeList(input)
    ReorderList().reorderList(head)
    #expect(head?.val == 1)
    #expect(head?.next?.val == 5)
    #expect(head?.next?.next?.val == 2)
    #expect(head?.next?.next?.next?.val == 4)
    #expect(head?.next?.next?.next?.next?.val == 3)
    #expect(head?.next?.next?.next?.next?.next == nil)
  }

  @Test func testReorderlist3() {
    let input = [1]
    let head = ListNode.makeList(input)
    ReorderList().reorderList(head)
    #expect(head?.val == 1)
    #expect(head?.next == nil)
  }
}

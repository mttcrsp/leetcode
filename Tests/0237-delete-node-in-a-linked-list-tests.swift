@testable
import Leetcode
import Testing

@Suite
struct DeleteNodeInALinkedListTests {
  @Test func testDeleteNode1() {
    let list = ListNode.makeList([1, 2, 3, 4])
    DeleteNodeInALinkedList().deleteNode(list?.next?.next)
    #expect(list?.val == 1)
    #expect(list?.next?.val == 2)
    #expect(list?.next?.next?.val == 4)
    #expect(list?.next?.next?.next == nil)
  }

  @Test func testDeleteNode2() {
    DeleteNodeInALinkedList().deleteNode(nil)
  }
}

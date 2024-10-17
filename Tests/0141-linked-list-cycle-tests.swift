@testable
import Leetcode
import Testing

@Suite
struct LinkedListCycleTests {
  @Test func testHasCycle1() {
    let node1 = ListNode(3)
    let node2 = ListNode(2)
    let node3 = ListNode(0)
    let node4 = ListNode(4)

    node1.next = node2
    node2.next = node3
    node3.next = node4
    node4.next = node2

    let output = true
    #expect(LinkedListCycle().hasCycle(node1) == output)
  }

  @Test func testHasCycle2() {
    let node1 = ListNode(1)
    let node2 = ListNode(2)

    node1.next = node2
    node2.next = node1

    let output = true
    #expect(LinkedListCycle().hasCycle(node1) == output)
  }

  @Test func testHasCycle3() {
    let node1 = ListNode(1)

    let output = false
    #expect(LinkedListCycle().hasCycle(node1) == output)
  }
}

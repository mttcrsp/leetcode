@testable
import Leetcode
import Testing

@Suite
struct MaximumTwinSumOfALinkedListTests {
  @Test func testPairsum1() {
    let input = ListNode.makeList([5, 4, 2, 1])
    let output = 6
    #expect(MaximumTwinSumOfALinkedList().pairSum(input) == output)
  }

  @Test func testPairsum2() {
    let input = ListNode.makeList([4, 2, 2, 3])
    let output = 7
    #expect(MaximumTwinSumOfALinkedList().pairSum(input) == output)
  }

  @Test func testPairsum3() {
    let input = ListNode.makeList([1, 100_000])
    let output = 100_001
    #expect(MaximumTwinSumOfALinkedList().pairSum(input) == output)
  }
}

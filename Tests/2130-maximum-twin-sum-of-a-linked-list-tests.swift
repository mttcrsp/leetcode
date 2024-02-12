@testable
import Leetcode
import XCTest

final class MaximumTwinSumOfALinkedListTests: XCTestCase {
  func testPairsum1() {
    let input = ListNode.makeList([5, 4, 2, 1])
    let output = 6
    XCTAssertEqual(MaximumTwinSumOfALinkedList().pairSum(input), output)
  }

  func testPairsum2() {
    let input = ListNode.makeList([4, 2, 2, 3])
    let output = 7
    XCTAssertEqual(MaximumTwinSumOfALinkedList().pairSum(input), output)
  }

  func testPairsum3() {
    let input = ListNode.makeList([1, 100_000])
    let output = 100_001
    XCTAssertEqual(MaximumTwinSumOfALinkedList().pairSum(input), output)
  }
}

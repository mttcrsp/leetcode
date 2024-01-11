@testable
import Leetcode
import XCTest

final class MaximumTwinSumOfALinkedListTests: XCTestCase {
  func testTestPairsum1() {
    let input = ListNode.makeList([5, 4, 2, 1])
    let output = 6
    XCTAssertEqual(MaximumTwinSumOfALinkedList().pairSum(input), output)
  }

  func testTestPairsum2() {
    let input = ListNode.makeList([4, 2, 2, 3])
    let output = 7
    XCTAssertEqual(MaximumTwinSumOfALinkedList().pairSum(input), output)
  }

  func testTestPairsum3() {
    let input = ListNode.makeList([1, 100_000])
    let output = 100_001
    XCTAssertEqual(MaximumTwinSumOfALinkedList().pairSum(input), output)
  }
}

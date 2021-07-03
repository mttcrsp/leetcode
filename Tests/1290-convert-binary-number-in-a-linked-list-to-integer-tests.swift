@testable
import Leetcode
import XCTest

final class ConvertBinaryNumberInALinkedListToIntegerTests: XCTestCase {
  func testGetDecimalValue1() {
    let input = ListNode.makeList([1, 0, 1])
    let output = 5
    XCTAssertEqual(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input), output)
  }

  func testGetDecimalValue2() {
    let input = ListNode.makeList([1])
    let output = 1
    XCTAssertEqual(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input), output)
  }

  func testGetDecimalValue3() {
    let input = ListNode.makeList([0])
    let output = 0
    XCTAssertEqual(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input), output)
  }

  func testGetDecimalValue4() {
    let input = ListNode.makeList([0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1])
    let output = 18881
    XCTAssertEqual(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input), output)
  }
}

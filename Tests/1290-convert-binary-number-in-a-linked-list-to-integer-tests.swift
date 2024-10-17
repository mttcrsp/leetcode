@testable
import Leetcode
import Testing

@Suite
struct ConvertBinaryNumberInALinkedListToIntegerTests {
  @Test func testGetDecimalValue1() {
    let input = ListNode.makeList([1, 0, 1])
    let output = 5
    #expect(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input) == output)
  }

  @Test func testGetDecimalValue2() {
    let input = ListNode.makeList([1])
    let output = 1
    #expect(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input) == output)
  }

  @Test func testGetDecimalValue3() {
    let input = ListNode.makeList([0])
    let output = 0
    #expect(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input) == output)
  }

  @Test func testGetDecimalValue4() {
    let input = ListNode.makeList([0, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 1])
    let output = 18881
    #expect(ConvertBinaryNumberInALinkedListToInteger().getDecimalValue(input) == output)
  }
}

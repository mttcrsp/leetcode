@testable
import Leetcode
import Testing

@Suite
struct AddTwoNumbersIiTests {
  @Test func testAddTwoNumbers1() {
    let input = (ListNode.makeList([0]), ListNode.makeList([0]))
    let output = [0]
    #expect(AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? [] == output)
  }

  @Test func testAddTwoNumbers2() {
    let input = (ListNode.makeList([5]), ListNode.makeList([5]))
    let output = [1, 0]
    #expect(AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? [] == output)
  }

  @Test func testAddTwoNumbers3() {
    let input = (ListNode.makeList([9, 8, 7]), ListNode.makeList([9, 8]))
    let output = [1, 0, 8, 5]
    #expect(AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? [] == output)
  }

  @Test func testAddTwoNumbers4() {
    let input = (ListNode.makeList([7, 2, 4, 3]), ListNode.makeList([5, 6, 4]))
    let output = [7, 8, 0, 7]
    #expect(AddTwoNumbersIi().addTwoNumbers(input.0, input.1)?.makeArray() ?? [] == output)
  }
}

private extension ListNode {
  func makeArray() -> [Int] {
    var result: [Int] = []
    var node: ListNode? = self
    while let current = node {
      result.append(current.val)
      node = current.next
    }
    return result
  }
}

@testable
import Leetcode
import Testing

@Suite
struct MinStackTests {
  @Test func testPush1() {
    let minStack = MinStack()
    minStack.push(-2)
    minStack.push(0)
    minStack.push(-3)
    #expect(minStack.getMin() == -3)
    minStack.pop()
    #expect(minStack.top() == 0)
    #expect(minStack.getMin() == -2)
  }
}

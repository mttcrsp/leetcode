@testable
import Leetcode
import Testing

@Suite
struct ImplementQueueUsingStacksTests {
  @Test func testMyQueue1() {
    let queue = MyQueue()
    queue.push(1)
    queue.push(2)
    #expect(queue.peek() == 1)
    #expect(queue.pop() == 1)
    #expect(!queue.empty())
  }

  @Test func testMyQueue2() {
    let queue = MyQueue()
    queue.push(1)
    #expect(queue.peek() == 1)
    #expect(!queue.empty())
    #expect(queue.pop() == 1)
    #expect(queue.empty())

    queue.push(1)
    queue.push(2)
    #expect(queue.peek() == 1)
    #expect(!queue.empty())
    #expect(queue.pop() == 1)
    #expect(!queue.empty())
    #expect(queue.pop() == 2)
    #expect(queue.empty())

    queue.push(1)
    queue.push(2)
    queue.push(3)
    #expect(queue.peek() == 1)
    #expect(!queue.empty())
    #expect(queue.pop() == 1)
    #expect(!queue.empty())
    #expect(queue.pop() == 2)
    #expect(!queue.empty())
    #expect(queue.pop() == 3)
    #expect(queue.empty())
  }
}

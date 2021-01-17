@testable
import Leetcode
import XCTest

final class ImplementQueueUsingStacksTests: XCTestCase {
  func testMyQueue1() {
    let queue = MyQueue()
    queue.push(1)
    queue.push(2)
    XCTAssertEqual(queue.peek(), 1)
    XCTAssertEqual(queue.pop(), 1)
    XCTAssertEqual(queue.empty(), false)
  }

  func testMyQueue2() {
    let queue = MyQueue()
    queue.push(1)
    XCTAssertEqual(queue.peek(), 1)
    XCTAssertEqual(queue.empty(), false)
    XCTAssertEqual(queue.pop(), 1)
    XCTAssertEqual(queue.empty(), true)

    queue.push(1)
    queue.push(2)
    XCTAssertEqual(queue.peek(), 1)
    XCTAssertEqual(queue.empty(), false)
    XCTAssertEqual(queue.pop(), 1)
    XCTAssertEqual(queue.empty(), false)
    XCTAssertEqual(queue.pop(), 2)
    XCTAssertEqual(queue.empty(), true)

    queue.push(1)
    queue.push(2)
    queue.push(3)
    XCTAssertEqual(queue.peek(), 1)
    XCTAssertEqual(queue.empty(), false)
    XCTAssertEqual(queue.pop(), 1)
    XCTAssertEqual(queue.empty(), false)
    XCTAssertEqual(queue.pop(), 2)
    XCTAssertEqual(queue.empty(), false)
    XCTAssertEqual(queue.pop(), 3)
    XCTAssertEqual(queue.empty(), true)
  }
}

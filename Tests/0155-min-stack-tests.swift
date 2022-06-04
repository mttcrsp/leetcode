@testable
import Leetcode
import XCTest

final class MinStackTests: XCTestCase {
  func testTestPush1() {
    let minStack = MinStack()
    minStack.push(-2)
    minStack.push(0)
    minStack.push(-3)
    XCTAssertEqual(minStack.getMin(), -3)
    minStack.pop()
    XCTAssertEqual(minStack.top(), 0)
    XCTAssertEqual(minStack.getMin(), -2)
  }
}

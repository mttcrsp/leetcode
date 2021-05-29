@testable
import Leetcode
import XCTest

final class PeekingIteratorTests: XCTestCase {
  func testPeekingIterator1() {
    let peekingIterator = PeekingIterator(IndexingIterator(_elements: [1, 2, 3]))
    XCTAssertEqual(peekingIterator.next(), 1) // return 1, the pointer moves to the next element [1,2,3].
    XCTAssertEqual(peekingIterator.peek(), 2) // return 2, the pointer does not move [1,2,3].
    XCTAssertEqual(peekingIterator.next(), 2) // return 2, the pointer moves to the next element [1,2,3]
    XCTAssertEqual(peekingIterator.next(), 3) // return 3, the pointer moves to the next element [1,2,3]
    XCTAssertFalse(peekingIterator.hasNext()) // return False
  }
}

@testable
import Leetcode
import XCTest

final class BinarySearchTreeIteratorTests: XCTestCase {
  func testBstIterator1() {
    let iterator = BSTIterator(TreeNode([7, 3, 15, nil, nil, 9, 20]))
    XCTAssertEqual(iterator.next(), 3)
    XCTAssertEqual(iterator.next(), 7)
    XCTAssertTrue(iterator.hasNext())
    XCTAssertEqual(iterator.next(), 9)
    XCTAssertTrue(iterator.hasNext())
    XCTAssertEqual(iterator.next(), 15)
    XCTAssertTrue(iterator.hasNext())
    XCTAssertEqual(iterator.next(), 20)
    XCTAssertFalse(iterator.hasNext())
  }
}

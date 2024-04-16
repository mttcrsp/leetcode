@testable
import Leetcode
import XCTest

final class CompleteBinaryTreeInserterTests: XCTestCase {
  func testInsert1() {
    let root = TreeNode([1, 2])
    let inserter = CBTInserter(root)
    XCTAssertEqual(inserter.insert(3), 1)
    XCTAssertEqual(inserter.insert(4), 2)
    XCTAssertEqual(root, inserter.get_root())
  }
}

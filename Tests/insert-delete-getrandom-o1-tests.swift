@testable
import Leetcode
import XCTest

final class InsertDeleteGetrandomO1Tests: XCTestCase {
  func testRandomizedSet1() {
    let set = RandomizedSet()
    XCTAssertTrue(set.insert(1))
    XCTAssertFalse(set.remove(2))
    XCTAssertTrue(set.insert(2))
    let random = set.getRandom()
    XCTAssert(random == 1 || random == 2)
    XCTAssertTrue(set.remove(1))
    XCTAssertFalse(set.insert(2))
    XCTAssertEqual(set.getRandom(), 2)
  }
}

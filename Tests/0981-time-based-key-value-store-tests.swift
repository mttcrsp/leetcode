@testable
import Leetcode
import XCTest

final class TimeBasedKeyValueStoreTests: XCTestCase {
  func testSet1() {
    let timeMap = TimeMap()
    timeMap.set("foo", "bar", 1)
    XCTAssertEqual(timeMap.get("foo", 1), "bar")
    XCTAssertEqual(timeMap.get("foo", 3), "bar")
    timeMap.set("foo", "bar2", 4)
    XCTAssertEqual(timeMap.get("foo", 4), "bar2")
    XCTAssertEqual(timeMap.get("foo", 5), "bar2")
  }
}

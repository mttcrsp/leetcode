@testable
import Leetcode
import XCTest

final class LRUCacheTests: XCTestCase {
  func testLRUCache1() {
    let cache = LRUCache(2)
    cache.put(1, 1)
    cache.put(2, 2)
    XCTAssertEqual(cache.get(1), 1)
    cache.put(3, 3)
    XCTAssertEqual(cache.get(2), -1)
    cache.put(4, 4)
    XCTAssertEqual(cache.get(3), 3)
    XCTAssertEqual(cache.get(4), 4)
  }

  func testLRUCache2() {
    let cache = LRUCache(2)
    cache.put(2, 1)
    cache.put(2, 2)
    XCTAssertEqual(cache.get(2), 2)
    cache.put(1, 1)
    cache.put(4, 1)
    XCTAssertEqual(cache.get(2), -1)
  }

  func testLRUCache3() {
    let cache = LRUCache(2)
    XCTAssertEqual(cache.get(2), -1)
    cache.put(2, 6)
    XCTAssertEqual(cache.get(1), -1)
    cache.put(1, 5)
    cache.put(1, 2)
    XCTAssertEqual(cache.get(1), 2)
    XCTAssertEqual(cache.get(2), 6)
  }
}

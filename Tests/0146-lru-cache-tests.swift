@testable
import Leetcode
import Testing

@Suite
struct LRUCacheTests {
  @Test func testLRUCache1() {
    let cache = LRUCache(2)
    cache.put(1, 1)
    cache.put(2, 2)
    #expect(cache.get(1) == 1)
    cache.put(3, 3)
    #expect(cache.get(2) == -1)
    cache.put(4, 4)
    #expect(cache.get(3) == 3)
    #expect(cache.get(4) == 4)
  }

  @Test func testLRUCache2() {
    let cache = LRUCache(2)
    cache.put(2, 1)
    cache.put(2, 2)
    #expect(cache.get(2) == 2)
    cache.put(1, 1)
    cache.put(4, 1)
    #expect(cache.get(2) == -1)
  }

  @Test func testLRUCache3() {
    let cache = LRUCache(2)
    #expect(cache.get(2) == -1)
    cache.put(2, 6)
    #expect(cache.get(1) == -1)
    cache.put(1, 5)
    cache.put(1, 2)
    #expect(cache.get(1) == 2)
    #expect(cache.get(2) == 6)
  }
}

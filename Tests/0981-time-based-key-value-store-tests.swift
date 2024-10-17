@testable
import Leetcode
import Testing

@Suite
struct TimeBasedKeyValueStoreTests {
  @Test func testSet1() {
    let timeMap = TimeMap()
    timeMap.set("foo", "bar", 1)
    #expect(timeMap.get("foo", 1) == "bar")
    #expect(timeMap.get("foo", 3) == "bar")
    timeMap.set("foo", "bar2", 4)
    #expect(timeMap.get("foo", 4) == "bar2")
    #expect(timeMap.get("foo", 5) == "bar2")
  }
}

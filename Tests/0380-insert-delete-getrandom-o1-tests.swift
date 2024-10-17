@testable
import Leetcode
import Testing

@Suite
struct InsertDeleteGetrandomO1Tests {
  @Test func testRandomizedSet1() {
    let set = RandomizedSet()
    #expect(set.insert(1))
    #expect(!set.remove(2))
    #expect(set.insert(2))
    let random = set.getRandom()
    #expect(random == 1 || random == 2)
    #expect(set.remove(1))
    #expect(!set.insert(2))
    #expect(set.getRandom() == 2)
  }
}

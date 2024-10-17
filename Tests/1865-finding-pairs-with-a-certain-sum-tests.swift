@testable
import Leetcode
import Testing

@Suite
struct FindingPairsWithACertainSumTests {
  @Test func testAdd1() {
    let pairs = FindSumPairs(
      [1, 1, 2, 2, 2, 3],
      [1, 4, 5, 2, 5, 4]
    )
    #expect(pairs.count(7) == 8)

    pairs.add(3, 2)
    #expect(pairs.count(8) == 2)
    #expect(pairs.count(4) == 1)

    pairs.add(0, 1)
    pairs.add(1, 1)
    #expect(pairs.count(7) == 11)
  }
}

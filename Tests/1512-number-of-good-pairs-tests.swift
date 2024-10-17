@testable
import Leetcode
import Testing

@Suite
struct NumberOfGoodPairsTests {
  @Test func testNumIdenticalPairs1() {
    let input = [1, 2, 3, 1, 1, 3]
    let output = 4
    #expect(NumberOfGoodPairs().numIdenticalPairs(input) == output)
  }

  @Test func testNumIdenticalPairs2() {
    let input = [1, 1, 1, 1]
    let output = 6
    #expect(NumberOfGoodPairs().numIdenticalPairs(input) == output)
  }

  @Test func testNumIdenticalPairs3() {
    let input = [1, 2, 3]
    let output = 0
    #expect(NumberOfGoodPairs().numIdenticalPairs(input) == output)
  }
}

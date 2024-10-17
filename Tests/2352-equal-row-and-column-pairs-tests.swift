@testable
import Leetcode
import Testing

@Suite
struct EqualRowAndColumnPairsTests {
  @Test func testEqualpairs1() {
    let input = [[3, 2, 1], [1, 7, 6], [2, 7, 7]]
    let output = 1
    #expect(EqualRowAndColumnPairs().equalPairs(input) == output)
  }

  @Test func testEqualpairs2() {
    let input = [[3, 1, 2, 2], [1, 4, 4, 5], [2, 4, 2, 2], [2, 4, 2, 2]]
    let output = 3
    #expect(EqualRowAndColumnPairs().equalPairs(input) == output)
  }
}

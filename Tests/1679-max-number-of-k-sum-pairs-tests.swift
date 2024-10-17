@testable
import Leetcode
import Testing

@Suite
struct MaxNumberOfKSumPairsTests {
  @Test func testMaxoperations1() {
    let input = ([1, 2, 3, 4], 5)
    let output = 2
    #expect(MaxNumberOfKSumPairs().maxOperations(input.0, input.1) == output)
  }

  @Test func testMaxoperations2() {
    let input = ([3, 1, 3, 4, 3], 6)
    let output = 1
    #expect(MaxNumberOfKSumPairs().maxOperations(input.0, input.1) == output)
  }

  @Test func testMaxoperations3() {
    let input = ([1, 2, 3, 4, 1, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 3, 2, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 3, 2, 1, 1, 2, 2, 1, 3, 4, 4, 2, 3, 1, 1, 2, 3, 4, 4, 3, 2, 1, 4, 5, 6, 7, 8, 9, 6, 4, 7, 8, 9, 5], 5)
    let output = 27
    #expect(MaxNumberOfKSumPairs().maxOperations(input.0, input.1) == output)
  }
}

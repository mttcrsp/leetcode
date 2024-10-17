@testable
import Leetcode
import Testing

@Suite
struct QueriesOnAPermutationWithKeyTests {
  @Test func testProcessQueries1() {
    let input = ([3, 1, 2, 1], 5)
    let output = [2, 1, 2, 1]
    #expect(QueriesOnAPermutationWithKey().processQueries(input.0, input.1) == output)
  }

  @Test func testProcessQueries2() {
    let input = ([4, 1, 2, 2], 4)
    let output = [3, 1, 2, 0]
    #expect(QueriesOnAPermutationWithKey().processQueries(input.0, input.1) == output)
  }

  @Test func testProcessQueries3() {
    let input = ([7, 5, 5, 8, 3], 8)
    let output = [6, 5, 0, 7, 5]
    #expect(QueriesOnAPermutationWithKey().processQueries(input.0, input.1) == output)
  }
}

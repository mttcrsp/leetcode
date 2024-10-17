@testable
import Leetcode
import Testing

@Suite
struct DetonateTheMaximumBombsTests {
  @Test func testMaximumDetonation1() {
    let input = [[2, 1, 3], [6, 1, 4]]
    let output = 2
    #expect(DetonateTheMaximumBombs().maximumDetonation(input) == output)
  }

  @Test func testMaximumDetonation2() {
    let input = [[1, 1, 5], [10, 10, 5]]
    let output = 1
    #expect(DetonateTheMaximumBombs().maximumDetonation(input) == output)
  }

  @Test func testMaximumDetonation3() {
    let input = [[1, 2, 3], [2, 3, 1], [3, 4, 2], [4, 5, 3], [5, 6, 4]]
    let output = 5
    #expect(DetonateTheMaximumBombs().maximumDetonation(input) == output)
  }
}

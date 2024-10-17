@testable
import Leetcode
import Testing

@Suite
struct RankTransformOfAnArrayTests {
  @Test func testArrayRankTransform1() {
    let input = [40, 10, 20, 30]
    let output = [4, 1, 2, 3]
    #expect(RankTransformOfAnArray().arrayRankTransform(input) == output)
  }

  @Test func testArrayRankTransform2() {
    let input = [100, 100, 100]
    let output = [1, 1, 1]
    #expect(RankTransformOfAnArray().arrayRankTransform(input) == output)
  }

  @Test func testArrayRankTransform3() {
    let input = [37, 12, 28, 9, 100, 56, 80, 5, 12]
    let output = [5, 3, 4, 2, 8, 6, 7, 1, 3]
    #expect(RankTransformOfAnArray().arrayRankTransform(input) == output)
  }
}

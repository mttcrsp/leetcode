@testable
import Leetcode
import Testing

@Suite
struct ReorderRoutesToMakeAllPathsLeadToTheCityZeroTests {
  @Test func testMinreorder1() {
    let input = (6, [[0, 1], [1, 3], [2, 3], [4, 0], [4, 5]])
    let output = 3
    #expect(ReorderRoutesToMakeAllPathsLeadToTheCityZero().minReorder(input.0, input.1) == output)
  }

  @Test func testMinreorder3() {
    let input = (5, [[1, 0], [1, 2], [3, 2], [3, 4]])
    let output = 2
    #expect(ReorderRoutesToMakeAllPathsLeadToTheCityZero().minReorder(input.0, input.1) == output)
  }

  @Test func testMinreorder5() {
    let input = (3, [[1, 0], [2, 0]])
    let output = 0
    #expect(ReorderRoutesToMakeAllPathsLeadToTheCityZero().minReorder(input.0, input.1) == output)
  }
}

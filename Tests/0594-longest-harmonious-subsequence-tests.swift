@testable
import Leetcode
import Testing

@Suite
struct LongestHarmoniousSubsequenceTests {
  @Test func testFindLHS1() {
    let input = [1, 3, 2, 2, 5, 2, 3, 7]
    let output = 5
    #expect(LongestHarmoniousSubsequence().findLHS(input) == output)
  }
}

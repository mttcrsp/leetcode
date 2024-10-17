@testable
import Leetcode
import Testing

@Suite
struct TargetSumTests {
  @Test func testFindtargetsumways1() {
    let input = ([1, 1, 1, 1, 1], 3)
    let output = 5
    #expect(TargetSum().findTargetSumWays(input.0, input.1) == output)
  }

  @Test func testFindtargetsumways3() {
    let input = ([1], 1)
    let output = 1
    #expect(TargetSum().findTargetSumWays(input.0, input.1) == output)
  }
}

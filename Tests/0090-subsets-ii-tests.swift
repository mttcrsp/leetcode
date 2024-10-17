@testable
import Leetcode
import Testing

@Suite
struct SubsetsIiTests {
  @Test func testSubsetswithdup1() {
    let input = [1, 2, 2]
    let output = [[], [1], [1, 2], [1, 2, 2], [2], [2, 2]]
    #expect(Set(SubsetsIi().subsetsWithDup(input)) == Set(output))
  }

  @Test func testSubsetswithdup2() {
    let input = [0]
    let output = [[], [0]]
    #expect(Set(SubsetsIi().subsetsWithDup(input)) == Set(output))
  }
}

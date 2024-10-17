@testable
import Leetcode
import Testing

@Suite
struct SubsetsTests {
  @Test func testSubsets1() {
    let input = [1, 2, 3]
    let output = [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]
    #expect(Set(Subsets().subsets(input)) == Set(output))
  }

  @Test func testSubsets2() {
    let input = [0]
    let output = [[], [0]]
    #expect(Set(Subsets().subsets(input)) == Set(output))
  }
}

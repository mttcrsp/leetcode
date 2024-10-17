@testable
import Leetcode
import Testing

@Suite
struct MinimumGeneticMutationTests {
  @Test func testMinmutation1() {
    let input = ("AACCGGTT", "AACCGGTA", ["AACCGGTA"])
    let output = 1
    #expect(MinimumGeneticMutation().minMutation(input.0, input.1, input.2) == output)
  }

  @Test func testMinmutation2() {
    let input = ("AACCGGTT", "AAACGGTA", ["AACCGGTA", "AACCGCTA", "AAACGGTA"])
    let output = 2
    #expect(MinimumGeneticMutation().minMutation(input.0, input.1, input.2) == output)
  }
}

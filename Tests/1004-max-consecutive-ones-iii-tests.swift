@testable
import Leetcode
import Testing

@Suite
struct MaxConsecutiveOnesIiiTests {
  @Test func testLongestones1() {
    let input = ([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2)
    let output = 6
    #expect(MaxConsecutiveOnesIii().longestOnes(input.0, input.1) == output)
  }

  @Test func testLongestones2() {
    let input = ([0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3)
    let output = 10
    #expect(MaxConsecutiveOnesIii().longestOnes(input.0, input.1) == output)
  }

  @Test func testLongestones3() {
    let input = ([0, 0, 0, 1], 4)
    let output = 4
    #expect(MaxConsecutiveOnesIii().longestOnes(input.0, input.1) == output)
  }
}

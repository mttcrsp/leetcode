@testable
import Leetcode
import Testing

@Suite
struct MinimumNumberOfStepsToMakeTwoStringsAnagramTests {
  @Test func testMinsteps1() {
    let input = ("bab", "aba")
    let output = 1
    #expect(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps(input.0, input.1) == output)
  }

  @Test func testMinsteps2() {
    let input = ("leetcode", "practice")
    let output = 5
    #expect(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps(input.0, input.1) == output)
  }

  @Test func testMinsteps3() {
    let input = ("anagram", "mangaar")
    let output = 0
    #expect(MinimumNumberOfStepsToMakeTwoStringsAnagram().minSteps(input.0, input.1) == output)
  }
}

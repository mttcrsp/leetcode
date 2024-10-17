@testable
import Leetcode
import Testing

@Suite
struct MaximumNumberOfVowelsInASubstringOfGivenLengthTests {
  @Test func testMaxvowels1() {
    let input = ("abciiidef", 3)
    let output = 3
    #expect(MaximumNumberOfVowelsInASubstringOfGivenLength().maxVowels(input.0, input.1) == output)
  }

  @Test func testMaxvowels3() {
    let input = ("aeiou", 2)
    let output = 2
    #expect(MaximumNumberOfVowelsInASubstringOfGivenLength().maxVowels(input.0, input.1) == output)
  }

  @Test func testMaxvowels5() {
    let input = ("leetcode", 3)
    let output = 2
    #expect(MaximumNumberOfVowelsInASubstringOfGivenLength().maxVowels(input.0, input.1) == output)
  }
}

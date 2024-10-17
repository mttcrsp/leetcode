@testable
import Leetcode
import Testing

@Suite
struct LetterCombinationsOfAPhoneNumberTests {
  @Test func testLettercombinations1() {
    let input = "23"
    let output = ["ad", "bd", "cd", "ae", "be", "ce", "af", "bf", "cf"]
    #expect(Set(LetterCombinationsOfAPhoneNumber().letterCombinations(input)) == Set(output))
  }

  @Test func testLettercombinations2() {
    let input = ""
    let output = [] as [String]
    #expect(Set(LetterCombinationsOfAPhoneNumber().letterCombinations(input)) == Set(output))
  }

  @Test func testLettercombinations3() {
    let input = "2"
    let output = ["a", "b", "c"]
    #expect(Set(LetterCombinationsOfAPhoneNumber().letterCombinations(input)) == Set(output))
  }
}

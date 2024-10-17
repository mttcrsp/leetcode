@testable
import Leetcode
import Testing

@Suite
struct NumberOfStringsThatAppearAsSubstringsInWordTests {
  @Test func testNumOfStrings1() {
    let input = (["a", "abc", "bc", "d"], "abc")
    let output = 3
    #expect(NumberOfStringsThatAppearAsSubstringsInWord().numOfStrings(input.0, input.1) == output)
  }

  @Test func testNumOfStrings2() {
    let input = (["a", "b", "c"], "aaaaabbbbb")
    let output = 2
    #expect(NumberOfStringsThatAppearAsSubstringsInWord().numOfStrings(input.0, input.1) == output)
  }

  @Test func testNumOfStrings3() {
    let input = (["a", "a", "a"], "ab")
    let output = 3
    #expect(NumberOfStringsThatAppearAsSubstringsInWord().numOfStrings(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct LengthOfLastWordTests {
  @Test func testlengthOfLastWord1() {
    let input = "Hello World"
    let output = 5
    #expect(LengthOfLastWord().lengthOfLastWord(input) == output)
  }

  @Test func testlengthOfLastWord2() {
    let input = "HelloWorld"
    let output = 10
    #expect(LengthOfLastWord().lengthOfLastWord(input) == output)
  }

  @Test func testlengthOfLastWord3() {
    let input = ""
    let output = 0
    #expect(LengthOfLastWord().lengthOfLastWord(input) == output)
  }

  @Test func testlengthOfLastWord4() {
    let input = "a "
    let output = 1
    #expect(LengthOfLastWord().lengthOfLastWord(input) == output)
  }
}

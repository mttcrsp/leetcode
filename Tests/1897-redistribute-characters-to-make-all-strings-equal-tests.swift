@testable
import Leetcode
import Testing

@Suite
struct RedistributeCharactersToMakeAllStringsEqualTests {
  @Test func testMakeequal1() {
    let input = ["abc", "aabc", "bc"]
    let output = true
    #expect(RedistributeCharactersToMakeAllStringsEqual().makeEqual(input) == output)
  }

  @Test func testMakeequal2() {
    let input = ["ab", "a"]
    let output = false
    #expect(RedistributeCharactersToMakeAllStringsEqual().makeEqual(input) == output)
  }
}

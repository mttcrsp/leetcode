@testable
import Leetcode
import Testing

@Suite
struct DivideAStringIntoGroupsOfSizeKTests {
  @Test func testDividestring1() {
    let input = ("abcdefghi", 3, "x" as Character)
    let output = ["abc", "def", "ghi"]
    #expect(DivideAStringIntoGroupsOfSizeK().divideString(input.0, input.1, input.2) == output)
  }

  @Test func testDividestring2() {
    let input = ("abcdefghij", 3, "x" as Character)
    let output = ["abc", "def", "ghi", "jxx"]
    #expect(DivideAStringIntoGroupsOfSizeK().divideString(input.0, input.1, input.2) == output)
  }
}

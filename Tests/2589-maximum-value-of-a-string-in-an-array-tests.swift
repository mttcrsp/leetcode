@testable
import Leetcode
import Testing

@Suite
struct MaximumValueOfAStringInAnArrayTests {
  @Test func testMaximumvalue1() {
    let input = ["alic3", "bob", "3", "4", "00000"]
    let output = 5
    #expect(MaximumValueOfAStringInAnArray().maximumValue(input) == output)
  }

  @Test func testMaximumvalue2() {
    let input = ["1", "01", "001", "0001"]
    let output = 1
    #expect(MaximumValueOfAStringInAnArray().maximumValue(input) == output)
  }

  @Test func testMaximumvalue3() {
    let input = ["00002", "0a01"]
    let output = 4
    #expect(MaximumValueOfAStringInAnArray().maximumValue(input) == output)
  }

  @Test func testMaximumvalue4() {
    let input = ["12034"]
    let output = 12034
    #expect(MaximumValueOfAStringInAnArray().maximumValue(input) == output)
  }
}

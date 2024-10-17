@testable
import Leetcode
import Testing

@Suite
struct LargestOddNumberInStringTests {
  @Test func testLargestOddNumber1() {
    let input = "52"
    let output = "5"
    #expect(LargestOddNumberInString().largestOddNumber(input) == output)
  }

  @Test func testLargestOddNumber2() {
    let input = "4206"
    let output = ""
    #expect(LargestOddNumberInString().largestOddNumber(input) == output)
  }

  @Test func testLargestOddNumber3() {
    let input = "35427"
    let output = "35427"
    #expect(LargestOddNumberInString().largestOddNumber(input) == output)
  }
}

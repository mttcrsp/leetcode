@testable
import Leetcode
import Testing

@Suite
struct NumberOfSubstringsWithOnly1STests {
  @Test func testNumSub1() {
    let input = "0110111"
    let output = 9
    #expect(NumberOfSubstringsWithOnly1S().numSub(input) == output)
  }

  @Test func testNumSub2() {
    let input = "101"
    let output = 2
    #expect(NumberOfSubstringsWithOnly1S().numSub(input) == output)
  }

  @Test func testNumSub3() {
    let input = "111111"
    let output = 21
    #expect(NumberOfSubstringsWithOnly1S().numSub(input) == output)
  }
}

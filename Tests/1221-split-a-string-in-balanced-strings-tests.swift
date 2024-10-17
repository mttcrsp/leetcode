@testable
import Leetcode
import Testing

@Suite
struct SplitAStringInBalancedStringsTests {
  @Test func testBalancedStringSplit1() {
    let input = "RLRRLLRLRL"
    let output = 4
    #expect(SplitAStringInBalancedStrings().balancedStringSplit(input) == output)
  }

  @Test func testBalancedStringSplit2() {
    let input = "RLLLLRRRLR"
    let output = 3
    #expect(SplitAStringInBalancedStrings().balancedStringSplit(input) == output)
  }

  @Test func testBalancedStringSplit3() {
    let input = "LLLLRRRR"
    let output = 1
    #expect(SplitAStringInBalancedStrings().balancedStringSplit(input) == output)
  }

  @Test func testBalancedStringSplit4() {
    let input = "RLRRRLLRLL"
    let output = 2
    #expect(SplitAStringInBalancedStrings().balancedStringSplit(input) == output)
  }
}

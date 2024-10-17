@testable
import Leetcode
import Testing

@Suite
struct ReplaceTheSubstringForBalancedStringTests {
  @Test func testBalancedString1() {
    let input = "QWER"
    let output = 0
    #expect(ReplaceTheSubstringForBalancedString().balancedString(input) == output)
  }

  @Test func testBalancedString2() {
    let input = "QQWE"
    let output = 1
    #expect(ReplaceTheSubstringForBalancedString().balancedString(input) == output)
  }

  @Test func testBalancedString3() {
    let input = "QQQW"
    let output = 2
    #expect(ReplaceTheSubstringForBalancedString().balancedString(input) == output)
  }

  @Test func testBalancedString4() {
    let input = "QQQQ"
    let output = 3
    #expect(ReplaceTheSubstringForBalancedString().balancedString(input) == output)
  }

  @Test func testBalancedString5() {
    let input = "QEWEEEEWERREWWQQWRWW"
    let output = 6
    #expect(ReplaceTheSubstringForBalancedString().balancedString(input) == output)
  }
}

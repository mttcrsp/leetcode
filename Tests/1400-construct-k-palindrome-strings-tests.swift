@testable
import Leetcode
import Testing

@Suite
struct ConstructKPalindromeStringsTests {
  @Test func testCanConstruct1() {
    let input = ("annabelle", 2)
    let output = true
    #expect(ConstructKPalindromeStrings().canConstruct(input.0, input.1) == output)
  }

  @Test func testCanConstruct2() {
    let input = ("leetcode", 3)
    let output = false
    #expect(ConstructKPalindromeStrings().canConstruct(input.0, input.1) == output)
  }

  @Test func testCanConstruct3() {
    let input = ("true", 4)
    let output = true
    #expect(ConstructKPalindromeStrings().canConstruct(input.0, input.1) == output)
  }

  @Test func testCanConstruct4() {
    let input = ("yzyzyzyzyzyzyzy", 2)
    let output = true
    #expect(ConstructKPalindromeStrings().canConstruct(input.0, input.1) == output)
  }

  @Test func testCanConstruct5() {
    let input = ("cr", 7)
    let output = false
    #expect(ConstructKPalindromeStrings().canConstruct(input.0, input.1) == output)
  }
}

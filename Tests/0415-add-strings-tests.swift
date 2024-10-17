@testable
import Leetcode
import Testing

@Suite
struct AddStringsTests {
  @Test func testAddStrings1() {
    let input = ("11", "123")
    let output = "134"
    #expect(AddStrings().addStrings(input.0, input.1) == output)
  }

  @Test func testAddStrings2() {
    let input = ("456", "77")
    let output = "533"
    #expect(AddStrings().addStrings(input.0, input.1) == output)
  }

  @Test func testAddStrings3() {
    let input = ("0", "0")
    let output = "0"
    #expect(AddStrings().addStrings(input.0, input.1) == output)
  }

  @Test func testAddStrings4() {
    let input = ("1", "9")
    let output = "10"
    #expect(AddStrings().addStrings(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct Base7Tests {
  @Test func testConvertToBase71() {
    let input = 100
    let output = "202"
    #expect(Base7().convertToBase7(input) == output)
  }

  @Test func testConvertToBase72() {
    let input = -7
    let output = "-10"
    #expect(Base7().convertToBase7(input) == output)
  }

  @Test func testConvertToBase73() {
    let input = 49
    let output = "100"
    #expect(Base7().convertToBase7(input) == output)
  }
}

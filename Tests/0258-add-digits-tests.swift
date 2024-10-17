@testable
import Leetcode
import Testing

@Suite
struct AddDigitsTests {
  @Test func testAddDigits1() {
    let input = 38
    let output = 2
    #expect(AddDigits().addDigits(input) == output)
  }

  @Test func testAddDigits2() {
    let input = 0
    let output = 0
    #expect(AddDigits().addDigits(input) == output)
  }

  @Test func testAddDigits3() {
    let input = 9
    let output = 9
    #expect(AddDigits().addDigits(input) == output)
  }

  @Test func testAddDigits4() {
    let input = 10
    let output = 1
    #expect(AddDigits().addDigits(input) == output)
  }

  @Test func testAddDigits5() {
    let input = 999
    let output = 9
    #expect(AddDigits().addDigits(input) == output)
  }
}

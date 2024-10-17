@testable
import Leetcode
import Testing

@Suite
struct AddBinaryTests {
  @Test func testAddBinary1() {
    let input = ("11", "1")
    let output = "100"
    #expect(AddBinary().addBinary(input.0, input.1) == output)
  }

  @Test func testAddBinary2() {
    let input = ("1010", "1011")
    let output = "10101"
    #expect(AddBinary().addBinary(input.0, input.1) == output)
  }

  @Test func testAddBinary3() {
    let input = ("10", "10")
    let output = "100"
    #expect(AddBinary().addBinary(input.0, input.1) == output)
  }

  @Test func testAddBinary4() {
    let input = ("1", "0")
    let output = "1"
    #expect(AddBinary().addBinary(input.0, input.1) == output)
  }
}

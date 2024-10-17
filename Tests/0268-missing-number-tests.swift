@testable
import Leetcode
import Testing

@Suite
struct MissingNumberTests {
  @Test func testMissingnumber1() {
    let input = [3, 0, 1]
    let output = 2
    #expect(MissingNumber().missingNumber(input) == output)
  }

  @Test func testMissingnumber2() {
    let input = [0, 1]
    let output = 2
    #expect(MissingNumber().missingNumber(input) == output)
  }

  @Test func testMissingnumber3() {
    let input = [9, 6, 4, 2, 3, 5, 7, 0, 1]
    let output = 8
    #expect(MissingNumber().missingNumber(input) == output)
  }
}

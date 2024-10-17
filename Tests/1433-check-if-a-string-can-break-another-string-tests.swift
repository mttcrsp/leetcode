@testable
import Leetcode
import Testing

@Suite
struct CheckIfAStringCanBreakAnotherStringTests {
  @Test func testCheckIfCanBreak1() {
    let input = ("abc", "xya")
    let output = true
    #expect(CheckIfAStringCanBreakAnotherString().checkIfCanBreak(input.0, input.1) == output)
  }

  @Test func testCheckIfCanBreak2() {
    let input = ("abe", "acd")
    let output = false
    #expect(CheckIfAStringCanBreakAnotherString().checkIfCanBreak(input.0, input.1) == output)
  }

  @Test func testCheckIfCanBreak3() {
    let input = ("leetcodee", "interview")
    let output = true
    #expect(CheckIfAStringCanBreakAnotherString().checkIfCanBreak(input.0, input.1) == output)
  }
}

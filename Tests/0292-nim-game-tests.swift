@testable
import Leetcode
import Testing

@Suite
struct NimGameTests {
  @Test func testCanWinNim1() {
    let input = 4
    let output = false
    #expect(NimGame().canWinNim(input) == output)
  }

  @Test func testCanWinNim2() {
    let input = 1
    let output = true
    #expect(NimGame().canWinNim(input) == output)
  }

  @Test func testCanWinNim3() {
    let input = 2
    let output = true
    #expect(NimGame().canWinNim(input) == output)
  }
}

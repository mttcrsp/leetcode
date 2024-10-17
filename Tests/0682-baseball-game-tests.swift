@testable
import Leetcode
import Testing

@Suite
struct BaseballGameTests {
  @Test func testCalPoints1() {
    let input = ["5", "2", "C", "D", "+"]
    let output = 30
    #expect(BaseballGame().calPoints(input) == output)
  }

  @Test func testCalPoints2() {
    let input = ["5", "-2", "4", "C", "D", "9", "+", "+"]
    let output = 27
    #expect(BaseballGame().calPoints(input) == output)
  }
}

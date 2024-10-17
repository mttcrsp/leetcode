@testable
import Leetcode
import Testing

@Suite
struct AngleBetweenHandsOfAClockTests {
  @Test func testAngleClock1() {
    let input = (12, 30)
    let output = 165.0
    #expect(AngleBetweenHandsOfAClock().angleClock(input.0, input.1) == output)
  }

  @Test func testAngleClock2() {
    let input = (3, 30)
    let output = 75.0
    #expect(AngleBetweenHandsOfAClock().angleClock(input.0, input.1) == output)
  }

  @Test func testAngleClock3() {
    let input = (3, 15)
    let output = 7.5
    #expect(AngleBetweenHandsOfAClock().angleClock(input.0, input.1) == output)
  }

  @Test func testAngleClock4() {
    let input = (4, 50)
    let output = 155.0
    #expect(AngleBetweenHandsOfAClock().angleClock(input.0, input.1) == output)
  }

  @Test func testAngleClock5() {
    let input = (12, 0)
    let output = 0.0
    #expect(AngleBetweenHandsOfAClock().angleClock(input.0, input.1) == output)
  }

  @Test func testAngleClock6() {
    let input = (1, 57)
    let output = 76.5
    #expect(AngleBetweenHandsOfAClock().angleClock(input.0, input.1) == output)
  }
}

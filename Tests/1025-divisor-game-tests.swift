@testable
import Leetcode
import Testing

@Suite
struct DivisorGameTests {
  @Test func testDivisorgame1() {
    let input = 2
    let output = true
    #expect(DivisorGame().divisorGame(input) == output)
  }

  @Test func testDivisorgame2() {
    let input = 3
    let output = false
    #expect(DivisorGame().divisorGame(input) == output)
  }

  @Test func testDivisorgame3() {
    let input = 14
    let output = true
    #expect(DivisorGame().divisorGame(input) == output)
  }

  @Test func testDivisorgame4() {
    let input = 1
    let output = false
    #expect(DivisorGame().divisorGame(input) == output)
  }

  @Test func testDivisorgame5() {
    let input = 1000
    let output = true
    #expect(DivisorGame().divisorGame(input) == output)
  }
}

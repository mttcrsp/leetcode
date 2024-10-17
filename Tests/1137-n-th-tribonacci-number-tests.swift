@testable
import Leetcode
import Testing

@Suite
struct NThTribonacciNumberTests {
  @Test func testTribonacci1() {
    let input = 0
    let output = 0
    #expect(NThTribonacciNumber().tribonacci(input) == output)
  }

  @Test func testTribonacci2() {
    let input = 1
    let output = 1
    #expect(NThTribonacciNumber().tribonacci(input) == output)
  }

  @Test func testTribonacci3() {
    let input = 2
    let output = 1
    #expect(NThTribonacciNumber().tribonacci(input) == output)
  }

  @Test func testTribonacci4() {
    let input = 4
    let output = 4
    #expect(NThTribonacciNumber().tribonacci(input) == output)
  }

  @Test func testTribonacci5() {
    let input = 25
    let output = 1_389_537
    #expect(NThTribonacciNumber().tribonacci(input) == output)
  }
}

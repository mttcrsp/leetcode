@testable
import Leetcode
import Testing

@Suite
struct SqrtxTests {
  @Test func testMySqrt1() {
    let input = 4
    let output = 2
    #expect(Sqrtx().mySqrt(input) == output)
  }

  @Test func testMySqrt2() {
    let input = 8
    let output = 2
    #expect(Sqrtx().mySqrt(input) == output)
  }

  @Test func testMySqrt3() {
    let input = 9
    let output = 3
    #expect(Sqrtx().mySqrt(input) == output)
  }
}

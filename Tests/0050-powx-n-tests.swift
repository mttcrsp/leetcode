@testable
import Leetcode
import Testing

@Suite
struct PowxNTests {
  @Test func testMypow1() {
    let input = (2.00000, 10)
    let output = 1024.0
    #expect(PowxN().myPow(input.0, input.1) == output)
  }

  @Test func testMypow2() {
    let input = (2.10000, 3)
    let output = 9.26100
    #expect(PowxN().myPow(input.0, input.1) == output)
  }

  @Test func testMypow3() {
    let input = (2.00000, -2)
    let output = 0.25000
    #expect(PowxN().myPow(input.0, input.1) == output)
  }

  @Test func testMypow4() {
    let input = (1.00000, -2_147_483_648)
    let output = 1.0
    #expect(PowxN().myPow(input.0, input.1) == output)
  }
}

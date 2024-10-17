@testable
import Leetcode
import Testing

@Suite
struct PowerOfThreeTests {
  @Test func testIspowerofthree1() {
    let input = 27
    let output = true
    #expect(PowerOfThree().isPowerOfThree(input) == output)
  }

  @Test func testIspowerofthree2() {
    let input = 0
    let output = false
    #expect(PowerOfThree().isPowerOfThree(input) == output)
  }

  @Test func testIspowerofthree3() {
    let input = 9
    let output = true
    #expect(PowerOfThree().isPowerOfThree(input) == output)
  }

  @Test func testIspowerofthree4() {
    let input = 1
    let output = true
    #expect(PowerOfThree().isPowerOfThree(input) == output)
  }
}

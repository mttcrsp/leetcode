@testable
import Leetcode
import Testing

@Suite
struct CoinChangeIiTests {
  @Test func testChange1() {
    let input = (5, [1, 2, 5])
    let output = 4
    #expect(CoinChangeIi().change(input.0, input.1) == output)
  }

  @Test func testChange3() {
    let input = (3, [2])
    let output = 0
    #expect(CoinChangeIi().change(input.0, input.1) == output)
  }

  @Test func testChange5() {
    let input = (10, [10])
    let output = 1
    #expect(CoinChangeIi().change(input.0, input.1) == output)
  }
}

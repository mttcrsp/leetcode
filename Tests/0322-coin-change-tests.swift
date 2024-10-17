@testable
import Leetcode
import Testing

@Suite
struct CoinChangeTests {
  @Test func testCoinChange1() {
    let input = ([1, 2, 5], 11)
    let output = 3
    #expect(CoinChange().coinChange(input.0, input.1) == output)
  }

  @Test func testCoinChange2() {
    let input = ([2], 3)
    let output = -1
    #expect(CoinChange().coinChange(input.0, input.1) == output)
  }

  @Test func testCoinChange3() {
    let input = ([2], 0)
    let output = 0
    #expect(CoinChange().coinChange(input.0, input.1) == output)
  }

  @Test func testCoinChange4() {
    let input = ([1], 1)
    let output = 1
    #expect(CoinChange().coinChange(input.0, input.1) == output)
  }
}

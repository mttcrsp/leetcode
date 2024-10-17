@testable
import Leetcode
import Testing

@Suite
struct BestTimeToBuyAndSellStockTests {
  @Test func testMaxProfit1() {
    let input = [7, 1, 5, 3, 6, 4]
    let output = 5
    #expect(BestTimeToBuyAndSellStock().maxProfit(input) == output)
  }

  @Test func testMaxProfit2() {
    let input = [7, 6, 4, 3, 1]
    let output = 0
    #expect(BestTimeToBuyAndSellStock().maxProfit(input) == output)
  }

  @Test func testMaxProfit3() {
    let input = [10, 7, 5, 2, 7, 11, 1, 2, 5, 7]
    let output = 9
    #expect(BestTimeToBuyAndSellStock().maxProfit(input) == output)
  }

  @Test func testMaxProfit4() {
    let input = [] as [Int]
    let output = 0
    #expect(BestTimeToBuyAndSellStock().maxProfit(input) == output)
  }
}

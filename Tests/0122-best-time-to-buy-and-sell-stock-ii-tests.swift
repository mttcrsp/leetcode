@testable
import Leetcode
import Testing

@Suite
struct BestTimeToBuyAndSellStockIiTests {
  @Test func testMaxProfit1() {
    let input = [7, 1, 5, 3, 6, 4]
    let output = 7
    #expect(BestTimeToBuyAndSellStockIi().maxProfit(input) == output)
  }

  @Test func testMaxProfit2() {
    let input = [1, 2, 3, 4, 5]
    let output = 4
    #expect(BestTimeToBuyAndSellStockIi().maxProfit(input) == output)
  }

  @Test func testMaxProfit3() {
    let input = [7, 6, 4, 3, 1]
    let output = 0
    #expect(BestTimeToBuyAndSellStockIi().maxProfit(input) == output)
  }
}

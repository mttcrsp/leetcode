@testable
import Leetcode
import Testing

@Suite
struct BestTimeToBuyAndSellStockWithTransactionFeeTests {
  @Test func testMaxProfit1() {
    let input = ([1, 3, 2, 8, 4, 9], 2)
    let output = 8
    #expect(BestTimeToBuyAndSellStockWithTransactionFee().maxProfit(input.0, input.1) == output)
  }

  @Test func testMaxProfit2() {
    let input = ([1, 3, 7, 5, 10, 3], 3)
    let output = 6
    #expect(BestTimeToBuyAndSellStockWithTransactionFee().maxProfit(input.0, input.1) == output)
  }
}

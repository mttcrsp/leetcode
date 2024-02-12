@testable
import Leetcode
import XCTest

final class BestTimeToBuyAndSellStockWithTransactionFeeTests: XCTestCase {
  func testMaxProfit1() {
    let input = ([1, 3, 2, 8, 4, 9], 2)
    let output = 8
    XCTAssertEqual(BestTimeToBuyAndSellStockWithTransactionFee().maxProfit(input.0, input.1), output)
  }

  func testMaxProfit2() {
    let input = ([1, 3, 7, 5, 10, 3], 3)
    let output = 6
    XCTAssertEqual(BestTimeToBuyAndSellStockWithTransactionFee().maxProfit(input.0, input.1), output)
  }
}

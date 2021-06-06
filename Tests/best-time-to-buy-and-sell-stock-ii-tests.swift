@testable
import Leetcode
import XCTest

final class BestTimeToBuyAndSellStockIiTests: XCTestCase {
  func testMaxProfit1() {
    let input = [7, 1, 5, 3, 6, 4]
    let output = 7
    XCTAssertEqual(BestTimeToBuyAndSellStockIi().maxProfit(input), output)
  }

  func testMaxProfit2() {
    let input = [1, 2, 3, 4, 5]
    let output = 4
    XCTAssertEqual(BestTimeToBuyAndSellStockIi().maxProfit(input), output)
  }

  func testMaxProfit3() {
    let input = [7, 6, 4, 3, 1]
    let output = 0
    XCTAssertEqual(BestTimeToBuyAndSellStockIi().maxProfit(input), output)
  }
}

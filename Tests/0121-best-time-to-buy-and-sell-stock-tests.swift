@testable
import Leetcode
import XCTest

final class BestTimeToBuyAndSellStockTests: XCTestCase {
  func testMaxProfit1() {
    let input = [7, 1, 5, 3, 6, 4]
    let output = 5
    XCTAssertEqual(BestTimeToBuyAndSellStock().maxProfit(input), output)
  }

  func testMaxProfit2() {
    let input = [7, 6, 4, 3, 1]
    let output = 0
    XCTAssertEqual(BestTimeToBuyAndSellStock().maxProfit(input), output)
  }

  func testMaxProfit3() {
    let input = [10, 7, 5, 2, 7, 11, 1, 2, 5, 7]
    let output = 9
    XCTAssertEqual(BestTimeToBuyAndSellStock().maxProfit(input), output)
  }

  func testMaxProfit4() {
    let input = [] as [Int]
    let output = 0
    XCTAssertEqual(BestTimeToBuyAndSellStock().maxProfit(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class DistributeMoneyToMaximumChildrenTests: XCTestCase {
  func testTestDistmoney1() {
    let input = (20, 3)
    let output = 1
    XCTAssertEqual(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1), output)
  }

  func testTestDistmoney2() {
    let input = (16, 2)
    let output = 2
    XCTAssertEqual(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1), output)
  }

  func testTestDistmoney3() {
    let input = (123, 12)
    let output = 11
    XCTAssertEqual(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1), output)
  }

  func testTestDistmoney4() {
    let input = (49, 12)
    let output = 5
    XCTAssertEqual(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1), output)
  }

  func testTestDistmoney5() {
    let input = (63, 12)
    let output = 7
    XCTAssertEqual(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1), output)
  }
}

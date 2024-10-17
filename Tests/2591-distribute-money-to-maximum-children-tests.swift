@testable
import Leetcode
import Testing

@Suite
struct DistributeMoneyToMaximumChildrenTests {
  @Test func testDistmoney1() {
    let input = (20, 3)
    let output = 1
    #expect(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1) == output)
  }

  @Test func testDistmoney2() {
    let input = (16, 2)
    let output = 2
    #expect(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1) == output)
  }

  @Test func testDistmoney3() {
    let input = (123, 12)
    let output = 11
    #expect(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1) == output)
  }

  @Test func testDistmoney4() {
    let input = (49, 12)
    let output = 5
    #expect(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1) == output)
  }

  @Test func testDistmoney5() {
    let input = (63, 12)
    let output = 7
    #expect(DistributeMoneyToMaximumChildren().distMoney(input.0, input.1) == output)
  }
}

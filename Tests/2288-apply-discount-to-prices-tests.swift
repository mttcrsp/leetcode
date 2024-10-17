@testable
import Leetcode
import Testing

@Suite
struct ApplyDiscountToPricesTests {
  @Test func testDiscountPrices1() {
    let input = ("there are $1 $2 and 5$ candies in the shop", 50)
    let output = "there are $0.50 $1.00 and 5$ candies in the shop"
    #expect(ApplyDiscountToPrices().discountPrices(input.0, input.1) == output)
  }

  @Test func testDiscountPrices2() {
    let input = ("1 2 $3 4 $5 $6 7 8$ $9 $10$", 100)
    let output = "1 2 $0.00 4 $0.00 $0.00 7 8$ $0.00 $10$"
    #expect(ApplyDiscountToPrices().discountPrices(input.0, input.1) == output)
  }

  @Test func testDiscountPrices3() {
    let input = ("$76111 ab $6 $", 48)
    let output = "$39577.72 ab $3.12 $"
    #expect(ApplyDiscountToPrices().discountPrices(input.0, input.1) == output)
  }
}

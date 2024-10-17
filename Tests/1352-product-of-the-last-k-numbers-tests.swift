@testable
import Leetcode
import Testing

@Suite
struct ProductOfTheLastKNumbersTests {
  @Test func testAdd1() {
    let product = ProductOfNumbers()
    product.add(3)
    product.add(0)
    product.add(2)
    product.add(5)
    product.add(4)
    #expect(product.getProduct(2) == 20)
    #expect(product.getProduct(3) == 40)
    #expect(product.getProduct(4) == 0)
    product.add(8)
    #expect(product.getProduct(2) == 32)
  }
}

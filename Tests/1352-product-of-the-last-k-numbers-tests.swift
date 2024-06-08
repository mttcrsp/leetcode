@testable
import Leetcode
import XCTest

final class ProductOfTheLastKNumbersTests: XCTestCase {
  func testAdd1() {
    let product = ProductOfNumbers()
    product.add(3)
    product.add(0)
    product.add(2)
    product.add(5)
    product.add(4)
    XCTAssertEqual(product.getProduct(2), 20)
    XCTAssertEqual(product.getProduct(3), 40)
    XCTAssertEqual(product.getProduct(4), 0)
    product.add(8)
    XCTAssertEqual(product.getProduct(2), 32)
  }
}

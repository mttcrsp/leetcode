@testable
import Leetcode
import XCTest

final class ProductOfArrayExceptSelfTests: XCTestCase {
  func testProductExceptSelf1() {
    let input = [1, 2, 3, 4]
    let output = [24, 12, 8, 6]
    XCTAssertEqual(ProductOfArrayExceptSelf().productExceptSelf(input), output)
  }

  func testProductExceptSelf2() {
    let input = [-1, 1, 0, -3, 3]
    let output = [0, 0, 9, 0, 0]
    XCTAssertEqual(ProductOfArrayExceptSelf().productExceptSelf(input), output)
  }

  func testProductExceptSelf3() {
    let input = [0, 0]
    let output = [0, 0]
    XCTAssertEqual(ProductOfArrayExceptSelf().productExceptSelf(input), output)
  }

  func testProductExceptSelf4() {
    let input = [0, 1]
    let output = [1, 0]
    XCTAssertEqual(ProductOfArrayExceptSelf().productExceptSelf(input), output)
  }

  func testProductExceptSelf5() {
    let input = [-1, 1]
    let output = [1, -1]
    XCTAssertEqual(ProductOfArrayExceptSelf().productExceptSelf(input), output)
  }

  func testProductExceptSelf6() {
    let input = [-1, 1, 0, 0]
    let output = [0, 0, 0, 0]
    XCTAssertEqual(ProductOfArrayExceptSelf().productExceptSelf(input), output)
  }
}

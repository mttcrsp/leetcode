@testable
import Leetcode
import XCTest

final class ProductOfTwoRunLengthEncodedArraysTests: XCTestCase {
  func testFindRLEArray1() {
    let input = ([[1, 3], [2, 3]], [[6, 3], [3, 3]])
    let output = [[6, 6]]
    XCTAssertEqual(ProductOfTwoRunLengthEncodedArrays().findRLEArray(input.0, input.1), output)
  }

  func testFindRLEArray2() {
    let input = ([[1, 3], [2, 1], [3, 2]], [[2, 3], [3, 3]])
    let output = [[2, 3], [6, 1], [9, 2]]
    XCTAssertEqual(ProductOfTwoRunLengthEncodedArrays().findRLEArray(input.0, input.1), output)
  }
}

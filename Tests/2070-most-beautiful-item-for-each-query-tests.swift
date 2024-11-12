@testable
import Leetcode
import XCTest

final class MostBeautifulItemForEachQueryTests: XCTestCase {
  func testMaximumBeauty1() {
    let input = ([[1, 2], [3, 2], [2, 4], [5, 6], [3, 5]], [1, 2, 3, 4, 5, 6])
    let output = [2, 4, 5, 5, 6, 6]
    XCTAssertEqual(MostBeautifulItemForEachQuery().maximumBeauty(input.0, input.1), output)
  }

  func testMaximumBeauty2() {
    let input = ([[1, 2], [1, 2], [1, 3], [1, 4]], [1])
    let output = [4]
    XCTAssertEqual(MostBeautifulItemForEachQuery().maximumBeauty(input.0, input.1), output)
  }

  func testMaximumBeauty3() {
    let input = ([[10, 1000]], [5])
    let output = [0]
    XCTAssertEqual(MostBeautifulItemForEachQuery().maximumBeauty(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class ContainerWithMostWaterTests: XCTestCase {
  func testMaxArea1() {
    let input = [1, 8, 6, 2, 5, 4, 8, 3, 7]
    let output = 49
    XCTAssertEqual(ContainerWithMostWater().maxArea(input), output)
  }

  func testMaxArea2() {
    let input = [1, 1]
    let output = 1
    XCTAssertEqual(ContainerWithMostWater().maxArea(input), output)
  }
}

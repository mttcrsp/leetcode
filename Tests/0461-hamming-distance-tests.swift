@testable
import Leetcode
import XCTest

final class HammingDistanceTests: XCTestCase {
  func testHammingDistance1() {
    let input = (1, 4)
    let output = 2
    XCTAssertEqual(HammingDistance().hammingDistance(input.0, input.1), output)
  }

  func testHammingDistance2() {
    let input = (3, 1)
    let output = 1
    XCTAssertEqual(HammingDistance().hammingDistance(input.0, input.1), output)
  }
}

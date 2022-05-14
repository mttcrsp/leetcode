@testable
import Leetcode
import XCTest

final class TopKFrequentElementsTests: XCTestCase {
  func testTestTopkfrequent1() {
    let input = ([1, 1, 1, 2, 2, 3], 2)
    let output = [1, 2]
    XCTAssertEqual(Set(TopKFrequentElements().topKFrequent(input.0, input.1)), Set(output))
  }

  func testTestTopkfrequent2() {
    let input = ([1], 1)
    let output = [1]
    XCTAssertEqual(Set(TopKFrequentElements().topKFrequent(input.0, input.1)), Set(output))
  }
}

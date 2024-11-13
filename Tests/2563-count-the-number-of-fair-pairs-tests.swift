@testable
import Leetcode
import XCTest

final class CountTheNumberOfFairPairsTests: XCTestCase {
  func testCountFairPairs1() {
    let input = ([0, 1, 7, 4, 4, 5], 3, 6)
    let output = 6
    XCTAssertEqual(CountTheNumberOfFairPairs().countFairPairs(input.0, input.1, input.2), output)
  }

  func testCountFairPairs2() {
    let input = ([1, 7, 9, 2, 5], 11, 11)
    let output = 1
    XCTAssertEqual(CountTheNumberOfFairPairs().countFairPairs(input.0, input.1, input.2), output)
  }
}

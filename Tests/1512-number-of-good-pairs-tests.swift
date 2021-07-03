@testable
import Leetcode
import XCTest

final class NumberOfGoodPairsTests: XCTestCase {
  func testNumIdenticalPairs1() {
    let input = [1, 2, 3, 1, 1, 3]
    let output = 4
    XCTAssertEqual(NumberOfGoodPairs().numIdenticalPairs(input), output)
  }

  func testNumIdenticalPairs2() {
    let input = [1, 1, 1, 1]
    let output = 6
    XCTAssertEqual(NumberOfGoodPairs().numIdenticalPairs(input), output)
  }

  func testNumIdenticalPairs3() {
    let input = [1, 2, 3]
    let output = 0
    XCTAssertEqual(NumberOfGoodPairs().numIdenticalPairs(input), output)
  }
}

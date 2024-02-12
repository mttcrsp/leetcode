@testable
import Leetcode
import XCTest

final class FindingPairsWithACertainSumTests: XCTestCase {
  func testAdd1() {
    let pairs = FindSumPairs(
      [1, 1, 2, 2, 2, 3],
      [1, 4, 5, 2, 5, 4]
    )
    XCTAssertEqual(pairs.count(7), 8)

    pairs.add(3, 2)
    XCTAssertEqual(pairs.count(8), 2)
    XCTAssertEqual(pairs.count(4), 1)

    pairs.add(0, 1)
    pairs.add(1, 1)
    XCTAssertEqual(pairs.count(7), 11)
  }
}

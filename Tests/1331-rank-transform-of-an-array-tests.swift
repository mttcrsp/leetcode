@testable
import Leetcode
import XCTest

final class RankTransformOfAnArrayTests: XCTestCase {
  func testArrayRankTransform1() {
    let input = [40, 10, 20, 30]
    let output = [4, 1, 2, 3]
    XCTAssertEqual(RankTransformOfAnArray().arrayRankTransform(input), output)
  }

  func testArrayRankTransform2() {
    let input = [100, 100, 100]
    let output = [1, 1, 1]
    XCTAssertEqual(RankTransformOfAnArray().arrayRankTransform(input), output)
  }

  func testArrayRankTransform3() {
    let input = [37, 12, 28, 9, 100, 56, 80, 5, 12]
    let output = [5, 3, 4, 2, 8, 6, 7, 1, 3]
    XCTAssertEqual(RankTransformOfAnArray().arrayRankTransform(input), output)
  }
}

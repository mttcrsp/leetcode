@testable
import Leetcode
import XCTest

final class ArrayPartitionTests: XCTestCase {
  func testArrayPairSum1() {
    let input = [1, 4, 3, 2]
    let output = 4
    XCTAssertEqual(ArrayPartition().arrayPairSum(input), output)
  }

  func testArrayPairSum2() {
    let input = [6, 2, 6, 5, 1, 2]
    let output = 9
    XCTAssertEqual(ArrayPartition().arrayPairSum(input), output)
  }
}

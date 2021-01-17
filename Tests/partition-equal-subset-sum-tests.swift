@testable
import Leetcode
import XCTest

final class PartitionEqualSubsetSumTests: XCTestCase {
  func testCanPartition1() {
    let input = [1, 5, 11, 5]
    let output = true
    XCTAssertEqual(PartitionEqualSubsetSum().canPartition(input), output)
  }

  func testCanPartition2() {
    let input = [1, 2, 5]
    let output = false
    XCTAssertEqual(PartitionEqualSubsetSum().canPartition(input), output)
  }
}

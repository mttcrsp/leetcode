@testable
import Leetcode
import XCTest

final class NumberOfSubmatricesThatSumToTargetTests: XCTestCase {
  func testTestNumsubmatrixsumtarget1() {
    let input = ([[0, 1, 0], [1, 1, 1], [0, 1, 0]], 0)
    let output = 4
    XCTAssertEqual(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1), output)
  }

  func testTestNumsubmatrixsumtarget3() {
    let input = ([[1, -1], [-1, 1]], 0)
    let output = 5
    XCTAssertEqual(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1), output)
  }

  func testTestNumsubmatrixsumtarget5() {
    let input = ([[904]], 0)
    let output = 0
    XCTAssertEqual(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1), output)
  }
}

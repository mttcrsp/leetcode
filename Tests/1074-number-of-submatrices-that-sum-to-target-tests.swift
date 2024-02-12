@testable
import Leetcode
import XCTest

final class NumberOfSubmatricesThatSumToTargetTests: XCTestCase {
  func testNumsubmatrixsumtarget1() {
    let input = ([[0, 1, 0], [1, 1, 1], [0, 1, 0]], 0)
    let output = 4
    XCTAssertEqual(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1), output)
  }

  func testNumsubmatrixsumtarget3() {
    let input = ([[1, -1], [-1, 1]], 0)
    let output = 5
    XCTAssertEqual(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1), output)
  }

  func testNumsubmatrixsumtarget5() {
    let input = ([[904]], 0)
    let output = 0
    XCTAssertEqual(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1), output)
  }
}

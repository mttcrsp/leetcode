@testable
import Leetcode
import XCTest

final class DifferenceBetweenOnesAndZerosInRowAndColumnTests: XCTestCase {
  func testOnesMinusZeros1() {
    let input = [[0, 1, 1], [1, 0, 1], [0, 0, 1]]
    let output = [[0, 0, 4], [0, 0, 4], [-2, -2, 2]]
    XCTAssertEqual(DifferenceBetweenOnesAndZerosInRowAndColumn().onesMinusZeros(input), output)
  }

  func testOnesMinusZeros2() {
    let input = [[1, 1, 1], [1, 1, 1]]
    let output = [[5, 5, 5], [5, 5, 5]]
    XCTAssertEqual(DifferenceBetweenOnesAndZerosInRowAndColumn().onesMinusZeros(input), output)
  }

  func testOnesMinusZeros3() {
    let input = [[0, 0, 0], [0, 0, 0]]
    let output = [[-5, -5, -5], [-5, -5, -5]]
    XCTAssertEqual(DifferenceBetweenOnesAndZerosInRowAndColumn().onesMinusZeros(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class MinimumFallingPathSumTests: XCTestCase {
  func testTestMinfallingpathsum1() {
    let input = [[2, 1, 3], [6, 5, 4], [7, 8, 9]]
    let output = 13
    XCTAssertEqual(MinimumFallingPathSum().minFallingPathSum(input), output)
  }

  func testTestMinfallingpathsum2() {
    let input = [[-19, 57], [-40, -5]]
    let output = -59
    XCTAssertEqual(MinimumFallingPathSum().minFallingPathSum(input), output)
  }

  func testTestMinfallingpathsum3() {
    let input = [[100, -42, -46, -41], [31, 97, 10, -10], [-58, -51, 82, 89], [51, 81, 69, -51]]
    let output = -36
    XCTAssertEqual(MinimumFallingPathSum().minFallingPathSum(input), output)
  }
}

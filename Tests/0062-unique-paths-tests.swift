@testable
import Leetcode
import XCTest

final class UniquePathsTests: XCTestCase {
  func testTestUniquepaths1() {
    let input = (3, 7)
    let output = 28
    XCTAssertEqual(UniquePaths().uniquePaths(input.0, input.1), output)
  }

  func testTestUniquepaths2() {
    let input = (3, 2)
    let output = 3
    XCTAssertEqual(UniquePaths().uniquePaths(input.0, input.1), output)
  }

  func testTestUniquepaths3() {
    let input = (3, 3)
    let output = 6
    XCTAssertEqual(UniquePaths().uniquePaths(input.0, input.1), output)
  }

  func testTestUniquepaths4() {
    let input = (4, 4)
    let output = 20
    XCTAssertEqual(UniquePaths().uniquePaths(input.0, input.1), output)
  }
}

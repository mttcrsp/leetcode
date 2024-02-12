@testable
import Leetcode
import XCTest

final class SurroundedRegionsTests: XCTestCase {
  func testSolve1() {
    var input: [[Character]] = [["X", "X", "X", "X"], ["X", "O", "O", "X"], ["X", "X", "O", "X"], ["X", "O", "X", "X"]]
    let output: [[Character]] = [["X", "X", "X", "X"], ["X", "X", "X", "X"], ["X", "X", "X", "X"], ["X", "O", "X", "X"]]
    SurroundedRegions().solve(&input)
    XCTAssertEqual(input, output)
  }

  func testSolve2() {
    var input: [[Character]] = [["X"]]
    let output: [[Character]] = [["X"]]
    SurroundedRegions().solve(&input)
    XCTAssertEqual(input, output)
  }
}

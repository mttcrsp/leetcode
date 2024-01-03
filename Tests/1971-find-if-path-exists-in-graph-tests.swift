@testable
import Leetcode
import XCTest

final class FindIfPathExistsInGraphTests: XCTestCase {
  func testTestValidpath1() {
    let input = (3, [[0, 1], [1, 2], [2, 0]], 0, 2)
    let output = true
    XCTAssertEqual(FindIfPathExistsInGraph().validPath(input.0, input.1, input.2, input.3), output)
  }

  func testTestValidpath5() {
    let input = (6, [[0, 1], [0, 2], [3, 5], [5, 4], [4, 3]], 0, 5)
    let output = false
    XCTAssertEqual(FindIfPathExistsInGraph().validPath(input.0, input.1, input.2, input.3), output)
  }
}

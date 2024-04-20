@testable
import Leetcode
import XCTest

final class CheckIfThereIsAValidPathInAGridTests: XCTestCase {
  func testHasValidPath1() {
    let input = [[2, 4, 3], [6, 5, 2]]
    let output = true
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath2() {
    let input = [[1, 2, 1], [1, 2, 1]]
    let output = false
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath3() {
    let input = [[1, 1, 2]]
    let output = false
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath4() {
    let input = [[1, 1]]
    let output = true
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath5() {
    let input = [[2], [2]]
    let output = true
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath6() {
    let input = [[2, 2]]
    let output = false
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath7() {
    let input = [[4, 3], [5, 6]]
    let output = true
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }

  func testHasValidPath8() {
    let input = [[2, 4, 3], [6, 5, 5]]
    let output = true
    XCTAssertEqual(CheckIfThereIsAValidPathInAGrid().hasValidPath(input), output)
  }
}

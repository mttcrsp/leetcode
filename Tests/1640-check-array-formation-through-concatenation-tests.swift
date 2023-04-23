@testable
import Leetcode
import XCTest

final class CheckArrayFormationThroughConcatenationTests: XCTestCase {
  func testTestCanformarray1() {
    let input = ([15,88], [[88],[15]])
    let output = true
    XCTAssertEqual(CheckArrayFormationThroughConcatenation().canFormArray(input.0, input.1), output)
  }

  func testTestCanformarray2() {
    let input = ([91,4,64,78], [[16,18,49]])
    let output = false
    XCTAssertEqual(CheckArrayFormationThroughConcatenation().canFormArray(input.0, input.1), output)
  }

  func testTestCanformarray3() {
    let input = ([91,4,64,78], [[78],[4,64],[91]])
    let output = true
    XCTAssertEqual(CheckArrayFormationThroughConcatenation().canFormArray(input.0, input.1), output)
  }
}

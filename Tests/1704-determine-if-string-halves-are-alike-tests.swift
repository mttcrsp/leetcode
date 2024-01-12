@testable
import Leetcode
import XCTest

final class DetermineIfStringHalvesAreAlikeTests: XCTestCase {
  func testTestHalvesarealike1() {
    let input = "book"
    let output = true
    XCTAssertEqual(DetermineIfStringHalvesAreAlike().halvesAreAlike(input), output)
  }

  func testTestHalvesarealike2() {
    let input = "textbook"
    let output = false
    XCTAssertEqual(DetermineIfStringHalvesAreAlike().halvesAreAlike(input), output)
  }

  func testTestHalvesarealike3() {
    let input = "etexbook"
    let output = true
    XCTAssertEqual(DetermineIfStringHalvesAreAlike().halvesAreAlike(input), output)
  }
}

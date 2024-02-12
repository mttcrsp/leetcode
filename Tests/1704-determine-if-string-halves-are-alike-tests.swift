@testable
import Leetcode
import XCTest

final class DetermineIfStringHalvesAreAlikeTests: XCTestCase {
  func testHalvesarealike1() {
    let input = "book"
    let output = true
    XCTAssertEqual(DetermineIfStringHalvesAreAlike().halvesAreAlike(input), output)
  }

  func testHalvesarealike2() {
    let input = "textbook"
    let output = false
    XCTAssertEqual(DetermineIfStringHalvesAreAlike().halvesAreAlike(input), output)
  }

  func testHalvesarealike3() {
    let input = "etexbook"
    let output = true
    XCTAssertEqual(DetermineIfStringHalvesAreAlike().halvesAreAlike(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class ExcelSheetColumnNumberTests: XCTestCase {
  func testTitleToNumber1() {
    let input = "A"
    let output = 1
    XCTAssertEqual(ExcelSheetColumnNumber().titleToNumber(input), output)
  }

  func testTitleToNumber2() {
    let input = "AB"
    let output = 28
    XCTAssertEqual(ExcelSheetColumnNumber().titleToNumber(input), output)
  }

  func testTitleToNumber3() {
    let input = "ZY"
    let output = 701
    XCTAssertEqual(ExcelSheetColumnNumber().titleToNumber(input), output)
  }

  func testTitleToNumber4() {
    let input = "FSDA"
    let output = 118_405
    XCTAssertEqual(ExcelSheetColumnNumber().titleToNumber(input), output)
  }
}

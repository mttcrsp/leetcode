@testable
import Leetcode
import Testing

@Suite
struct ExcelSheetColumnNumberTests {
  @Test func testTitleToNumber1() {
    let input = "A"
    let output = 1
    #expect(ExcelSheetColumnNumber().titleToNumber(input) == output)
  }

  @Test func testTitleToNumber2() {
    let input = "AB"
    let output = 28
    #expect(ExcelSheetColumnNumber().titleToNumber(input) == output)
  }

  @Test func testTitleToNumber3() {
    let input = "ZY"
    let output = 701
    #expect(ExcelSheetColumnNumber().titleToNumber(input) == output)
  }

  @Test func testTitleToNumber4() {
    let input = "FSDA"
    let output = 118_405
    #expect(ExcelSheetColumnNumber().titleToNumber(input) == output)
  }
}

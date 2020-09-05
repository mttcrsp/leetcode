@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testConvert1() {
    let input = ("PAYPALISHIRING", 0)
    let output = "PAYPALISHIRING"
    XCTAssertEqual(Solution().convert(input.0, input.1), output)
  }

  func testConvert2() {
    let input = ("PAYPALISHIRING", 1)
    let output = "PAYPALISHIRING"
    XCTAssertEqual(Solution().convert(input.0, input.1), output)
  }

  func testConvert() {
    let input = ("PAYPALISHIRING", 3)
    let output = "PAHNAPLSIIGYIR"
    XCTAssertEqual(Solution().convert(input.0, input.1), output)
  }

  func testConvert4() {
    let input = ("PAYPALISHIRING", 4)
    let output = "PINALSIGYAHRPI"
    XCTAssertEqual(Solution().convert(input.0, input.1), output)
  }
}

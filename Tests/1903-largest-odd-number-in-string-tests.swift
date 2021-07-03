@testable
import Leetcode
import XCTest

final class LargestOddNumberInStringTests: XCTestCase {
  func testLargestOddNumber1() {
    let input = "52"
    let output = "5"
    XCTAssertEqual(LargestOddNumberInString().largestOddNumber(input), output)
  }

  func testLargestOddNumber2() {
    let input = "4206"
    let output = ""
    XCTAssertEqual(LargestOddNumberInString().largestOddNumber(input), output)
  }

  func testLargestOddNumber3() {
    let input = "35427"
    let output = "35427"
    XCTAssertEqual(LargestOddNumberInString().largestOddNumber(input), output)
  }
}

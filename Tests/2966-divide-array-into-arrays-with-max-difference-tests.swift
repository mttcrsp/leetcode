@testable
import Leetcode
import XCTest

final class DivideArrayIntoArraysWithMaxDifferenceTests: XCTestCase {
  func testTestDividearray1() {
    let input = ([1, 3, 4, 8, 7, 9, 3, 5, 1], 2)
    let output = [[1, 1, 3], [3, 4, 5], [7, 8, 9]]
    XCTAssertEqual(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1), output)
  }

  func testTestDividearray2() {
    let input = ([1, 3, 3, 2, 7, 3], 3)
    let output = [] as [[Int]]
    XCTAssertEqual(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1), output)
  }

  func testTestDividearray3() {
    let input = ([1, 1, 1, 1, 1, 1], 0)
    let output = [[1, 1, 1], [1, 1, 1]]
    XCTAssertEqual(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1), output)
  }

  func testTestDividearray4() {
    let input = ([1, 1, 1, 1, 1], 0)
    let output = [] as [[Int]]
    XCTAssertEqual(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1), output)
  }
}

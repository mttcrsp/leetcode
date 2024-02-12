@testable
import Leetcode
import XCTest

final class ConstructTheRectangleTests: XCTestCase {
  func testConstructrectangle1() {
    let input = 4
    let output = [2, 2]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }

  func testConstructrectangle2() {
    let input = 37
    let output = [37, 1]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }

  func testConstructrectangle3() {
    let input = 122_122
    let output = [427, 286]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }

  func testConstructrectangle4() {
    let input = 1
    let output = [1, 1]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }
}

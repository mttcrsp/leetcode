@testable
import Leetcode
import XCTest

final class ConstructTheRectangleTests: XCTestCase {
  func testTestConstructrectangle1() {
    let input = 4
    let output = [2, 2]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }

  func testTestConstructrectangle2() {
    let input = 37
    let output = [37, 1]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }

  func testTestConstructrectangle3() {
    let input = 122_122
    let output = [427, 286]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }

  func testTestConstructrectangle4() {
    let input = 1
    let output = [1, 1]
    XCTAssertEqual(ConstructTheRectangle().constructRectangle(input), output)
  }
}

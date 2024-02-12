@testable
import Leetcode
import XCTest

final class NumberOfProvincesTests: XCTestCase {
  func testFindcirclenum1() {
    let input = [[1, 1, 0], [1, 1, 0], [0, 0, 1]]
    let output = 2
    XCTAssertEqual(NumberOfProvinces().findCircleNum(input), output)
  }

  func testFindcirclenum2() {
    let input = [[1, 0, 0], [0, 1, 0], [0, 0, 1]]
    let output = 3
    XCTAssertEqual(NumberOfProvinces().findCircleNum(input), output)
  }
}

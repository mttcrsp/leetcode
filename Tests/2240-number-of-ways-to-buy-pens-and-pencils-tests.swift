@testable
import Leetcode
import XCTest

final class NumberOfWaysToBuyPensAndPencilsTests: XCTestCase {
  func testWaysToBuyPensPencils1() {
    let input = (20, 10, 5)
    let output = 9
    XCTAssertEqual(NumberOfWaysToBuyPensAndPencils().waysToBuyPensPencils(input.0, input.1, input.2), output)
  }

  func testWaysToBuyPensPencils2() {
    let input = (5, 10, 10)
    let output = 1
    XCTAssertEqual(NumberOfWaysToBuyPensAndPencils().waysToBuyPensPencils(input.0, input.1, input.2), output)
  }
}

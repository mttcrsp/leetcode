@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testAngleClock1() {
    let input = (12, 30)
    let output = 165.0
    XCTAssertEqual(Solution().angleClock(input.0, input.1), output)
  }

  func testAngleClock2() {
    let input = (3, 30)
    let output = 75.0
    XCTAssertEqual(Solution().angleClock(input.0, input.1), output)
  }

  func testAngleClock3() {
    let input = (3, 15)
    let output = 7.5
    XCTAssertEqual(Solution().angleClock(input.0, input.1), output)
  }

  func testAngleClock4() {
    let input = (4, 50)
    let output = 155.0
    XCTAssertEqual(Solution().angleClock(input.0, input.1), output)
  }

  func testAngleClock5() {
    let input = (12, 0)
    let output = 0.0
    XCTAssertEqual(Solution().angleClock(input.0, input.1), output)
  }

  func testAngleClock6() {
    let input = (1, 57)
    let output = 76.5
    XCTAssertEqual(Solution().angleClock(input.0, input.1), output)
  }
}

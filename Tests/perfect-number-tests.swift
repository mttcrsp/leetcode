@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testCheckPerfectNumber1() {
    let input = 28
    let output = true
    XCTAssertEqual(Solution().checkPerfectNumber(input), output)
  }

  func testCheckPerfectNumber2() {
    let input = 6
    let output = true
    XCTAssertEqual(Solution().checkPerfectNumber(input), output)
  }

  func testCheckPerfectNumber3() {
    let input = 496
    let output = true
    XCTAssertEqual(Solution().checkPerfectNumber(input), output)
  }

  func testCheckPerfectNumber4() {
    let input = 8128
    let output = true
    XCTAssertEqual(Solution().checkPerfectNumber(input), output)
  }

  func testCheckPerfectNumber5() {
    let input = 2
    let output = false
    XCTAssertEqual(Solution().checkPerfectNumber(input), output)
  }

  func testCheckPerfectNumber6() {
    let input = 99_999_996
    let output = false
    XCTAssertEqual(Solution().checkPerfectNumber(input), output)
  }
}

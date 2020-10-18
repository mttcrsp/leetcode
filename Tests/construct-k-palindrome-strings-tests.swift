@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testCanConstruct1() {
    let input = ("annabelle", 2)
    let output = true
    XCTAssertEqual(Solution().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct2() {
    let input = ("leetcode", 3)
    let output = false
    XCTAssertEqual(Solution().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct3() {
    let input = ("true", 4)
    let output = true
    XCTAssertEqual(Solution().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct4() {
    let input = ("yzyzyzyzyzyzyzy", 2)
    let output = true
    XCTAssertEqual(Solution().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct5() {
    let input = ("cr", 7)
    let output = false
    XCTAssertEqual(Solution().canConstruct(input.0, input.1), output)
  }
}

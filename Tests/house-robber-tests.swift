@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testRob1() {
    let input = [1, 2, 3, 1]
    let output = 4
    XCTAssertEqual(Solution().rob(input), output)
  }

  func testRob2() {
    let input = [2, 7, 9, 3, 1]
    let output = 12
    XCTAssertEqual(Solution().rob(input), output)
  }

  func testRob3() {
    let input = [12, 7, 9, 88]
    let output = 100
    XCTAssertEqual(Solution().rob(input), output)
  }

  func testRob4() {
    let input = [] as [Int]
    let output = 0
    XCTAssertEqual(Solution().rob(input), output)
  }

  func testRob5() {
    let input = [1]
    let output = 1
    XCTAssertEqual(Solution().rob(input), output)
  }

  func testRob6() {
    let input = [2, 1]
    let output = 2
    XCTAssertEqual(Solution().rob(input), output)
  }

  func testRob7() {
    let input = [1, 2]
    let output = 2
    XCTAssertEqual(Solution().rob(input), output)
  }
}

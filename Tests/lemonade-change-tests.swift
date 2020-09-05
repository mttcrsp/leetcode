@testable
import Leetcode
import XCTest

extension SolutionTests {
  func testLemonadeChange1() {
    let input = [5, 5, 5, 10, 20]
    let output = true
    XCTAssertEqual(Solution().lemonadeChange(input), output)
  }

  func testLemonadeChange2() {
    let input = [5, 5, 10]
    let output = true
    XCTAssertEqual(Solution().lemonadeChange(input), output)
  }

  func testLemonadeChange3() {
    let input = [10, 10]
    let output = false
    XCTAssertEqual(Solution().lemonadeChange(input), output)
  }

  func testLemonadeChange4() {
    let input = [5, 5, 10, 10, 20]
    let output = false
    XCTAssertEqual(Solution().lemonadeChange(input), output)
  }

  func testLemonadeChange5() {
    let input = [5, 5, 10, 20, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 5, 5, 20, 5, 20, 5]
    let output = true
    XCTAssertEqual(Solution().lemonadeChange(input), output)
  }
}

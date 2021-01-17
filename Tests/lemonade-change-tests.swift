@testable
import Leetcode
import XCTest

final class LemonadeChangeTests: XCTestCase {
  func testLemonadeChange1() {
    let input = [5, 5, 5, 10, 20]
    let output = true
    XCTAssertEqual(LemonadeChange().lemonadeChange(input), output)
  }

  func testLemonadeChange2() {
    let input = [5, 5, 10]
    let output = true
    XCTAssertEqual(LemonadeChange().lemonadeChange(input), output)
  }

  func testLemonadeChange3() {
    let input = [10, 10]
    let output = false
    XCTAssertEqual(LemonadeChange().lemonadeChange(input), output)
  }

  func testLemonadeChange4() {
    let input = [5, 5, 10, 10, 20]
    let output = false
    XCTAssertEqual(LemonadeChange().lemonadeChange(input), output)
  }

  func testLemonadeChange5() {
    let input = [5, 5, 10, 20, 5, 5, 5, 5, 5, 5, 5, 5, 5, 10, 5, 5, 20, 5, 20, 5]
    let output = true
    XCTAssertEqual(LemonadeChange().lemonadeChange(input), output)
  }
}

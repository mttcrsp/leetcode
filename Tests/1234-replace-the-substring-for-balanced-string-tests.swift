@testable
import Leetcode
import XCTest

final class ReplaceTheSubstringForBalancedStringTests: XCTestCase {
  func testBalancedString1() {
    let input = "QWER"
    let output = 0
    XCTAssertEqual(ReplaceTheSubstringForBalancedString().balancedString(input), output)
  }

  func testBalancedString2() {
    let input = "QQWE"
    let output = 1
    XCTAssertEqual(ReplaceTheSubstringForBalancedString().balancedString(input), output)
  }

  func testBalancedString3() {
    let input = "QQQW"
    let output = 2
    XCTAssertEqual(ReplaceTheSubstringForBalancedString().balancedString(input), output)
  }

  func testBalancedString4() {
    let input = "QQQQ"
    let output = 3
    XCTAssertEqual(ReplaceTheSubstringForBalancedString().balancedString(input), output)
  }

  func testBalancedString5() {
    let input = "QEWEEEEWERREWWQQWRWW"
    let output = 6
    XCTAssertEqual(ReplaceTheSubstringForBalancedString().balancedString(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class IntegerReplacementTests: XCTestCase {
  func testTestIntegerreplacement1() {
    let input = 8
    let output = 3
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testTestIntegerreplacement2() {
    let input = 7
    let output = 4
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testTestIntegerreplacement3() {
    let input = 4
    let output = 2
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testTestIntegerreplacement4() {
    let input = 3
    let output = 2
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testTestIntegerreplacement5() {
    let input = 17
    let output = 5
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testTestIntegerreplacement6() {
    let input = 19
    let output = 6
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testTestIntegerreplacement7() {
    let input = 1_243_768
    let output = 26
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }
}

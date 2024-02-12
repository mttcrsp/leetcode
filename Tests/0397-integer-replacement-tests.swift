@testable
import Leetcode
import XCTest

final class IntegerReplacementTests: XCTestCase {
  func testIntegerreplacement1() {
    let input = 8
    let output = 3
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testIntegerreplacement2() {
    let input = 7
    let output = 4
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testIntegerreplacement3() {
    let input = 4
    let output = 2
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testIntegerreplacement4() {
    let input = 3
    let output = 2
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testIntegerreplacement5() {
    let input = 17
    let output = 5
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testIntegerreplacement6() {
    let input = 19
    let output = 6
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }

  func testIntegerreplacement7() {
    let input = 1_243_768
    let output = 26
    XCTAssertEqual(IntegerReplacement().integerReplacement(input), output)
  }
}

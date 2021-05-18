@testable
import Leetcode
import XCTest

final class PlusOneTests: XCTestCase {
  func testPlusOne1() {
    let input = [1, 2, 3]
    let output = [1, 2, 4]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }

  func testPlusOne2() {
    let input = [4, 3, 2, 1]
    let output = [4, 3, 2, 2]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }

  func testPlusOne3() {
    let input = [0]
    let output = [1]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }

  func testPlusOne4() {
    let input = [9]
    let output = [1, 0]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }

  func testPlusOne5() {
    let input = [1, 9]
    let output = [2, 0]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }

  func testPlusOne6() {
    let input = [9, 9]
    let output = [1, 0, 0]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }

  func testPlusOne7() {
    let input = [9, 0]
    let output = [9, 1]
    XCTAssertEqual(PlusOne().plusOne(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class SetMismatchTests: XCTestCase {
  func testTestFinderrornums1() {
    let input = [1, 2, 2, 4]
    let output = [2, 3]
    XCTAssertEqual(SetMismatch().findErrorNums(input), output)
  }

  func testTestFinderrornums2() {
    let input = [1, 1]
    let output = [1, 2]
    XCTAssertEqual(SetMismatch().findErrorNums(input), output)
  }

  func testTestFinderrornums3() {
    let input = [4, 4, 3, 2]
    let output = [4, 1]
    XCTAssertEqual(SetMismatch().findErrorNums(input), output)
  }
}

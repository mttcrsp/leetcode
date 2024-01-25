@testable
import Leetcode
import XCTest

final class RansomNoteTests: XCTestCase {
  func testTestCanconstruct1() {
    let input = ("a", "b")
    let output = false
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testTestCanconstruct2() {
    let input = ("aa", "ab")
    let output = false
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testTestCanconstruct3() {
    let input = ("aa", "aab")
    let output = true
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }
}

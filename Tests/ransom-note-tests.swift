@testable
import Leetcode
import XCTest

final class RansomNoteTests: XCTestCase {
  func testCanConstruct1() {
    let input = ("a", "b")
    let output = false
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct2() {
    let input = ("aa", "ab")
    let output = false
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct3() {
    let input = ("aa", "aab")
    let output = true
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct4() {
    let input = ("aab", "aab")
    let output = true
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct5() {
    let input = ("xaab", "aab")
    let output = false
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct6() {
    let input = ("aab", "xaab")
    let output = true
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }

  func testCanConstruct7() {
    let input = ("", "")
    let output = true
    XCTAssertEqual(RansomNote().canConstruct(input.0, input.1), output)
  }
}

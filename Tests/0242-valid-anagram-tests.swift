@testable
import Leetcode
import XCTest

final class ValidAnagramTests: XCTestCase {
  func testIsAnagram1() {
    let input = ("anagram", "nagaram")
    let output = true
    XCTAssertEqual(ValidAnagram().isAnagram(input.0, input.1), output)
  }

  func testIsAnagram2() {
    let input = ("rat", "car")
    let output = false
    XCTAssertEqual(ValidAnagram().isAnagram(input.0, input.1), output)
  }

  func testIsAnagram3() {
    let input = ("ab", "a")
    let output = false
    XCTAssertEqual(ValidAnagram().isAnagram(input.0, input.1), output)
  }
}

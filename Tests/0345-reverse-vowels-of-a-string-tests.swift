@testable
import Leetcode
import XCTest

final class ReverseVowelsOfAStringTests: XCTestCase {
  func testReversevowels1() {
    let input = "hello"
    let output = "holle"
    XCTAssertEqual(ReverseVowelsOfAString().reverseVowels(input), output)
  }

  func testReversevowels2() {
    let input = "leetcode"
    let output = "leotcede"
    XCTAssertEqual(ReverseVowelsOfAString().reverseVowels(input), output)
  }
}

@testable
import Leetcode
import XCTest

@available(macOS 10.15, *)
final class DecodeStringTests: XCTestCase {
  func testTestDecodestring1() {
    let input = "3[a]2[bc]"
    let output = "aaabcbc"
    XCTAssertEqual(DecodeString().decodeString(input), output)
  }

  func testTestDecodestring2() {
    let input = "3[a2[c]]"
    let output = "accaccacc"
    XCTAssertEqual(DecodeString().decodeString(input), output)
  }

  func testTestDecodestring3() {
    let input = "2[abc]3[cd]ef"
    let output = "abcabccdcdcdef"
    XCTAssertEqual(DecodeString().decodeString(input), output)
  }
}

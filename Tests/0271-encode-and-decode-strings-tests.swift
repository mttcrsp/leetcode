@testable
import Leetcode
import XCTest

final class CodecTests: XCTestCase {
  func testCodec1() {
    let codec = Codec271()
    let input = ["Hello", "World"]
    XCTAssertEqual(codec.decode(codec.encode(input)), input)
  }
}

@testable
import Leetcode
import XCTest

final class ReorganizeStringTests: XCTestCase {
  func testReorganizeString1() {
    let input = "aab"
    let output = "aba"
    XCTAssertEqual(ReorganizeString().reorganizeString(input), output)
  }

  func testReorganizeString2() {
    let input = "aaab"
    let output = ""
    XCTAssertEqual(ReorganizeString().reorganizeString(input), output)
  }

  func testReorganizeString3() {
    let input = "vvvlo"
    let output = "vovlv"
    XCTAssertEqual(ReorganizeString().reorganizeString(input), output)
  }

  func testReorganizeString4() {
    let input = "abbabbaaab"
    let output = "bababababa"
    XCTAssertEqual(ReorganizeString().reorganizeString(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class LengthOfLastWordTests: XCTestCase {
  func testlengthOfLastWord1() {
    let input = "Hello World"
    let output = 5
    XCTAssertEqual(LengthOfLastWord().lengthOfLastWord(input), output)
  }

  func testlengthOfLastWord2() {
    let input = "HelloWorld"
    let output = 10
    XCTAssertEqual(LengthOfLastWord().lengthOfLastWord(input), output)
  }

  func testlengthOfLastWord3() {
    let input = ""
    let output = 0
    XCTAssertEqual(LengthOfLastWord().lengthOfLastWord(input), output)
  }

  func testlengthOfLastWord4() {
    let input = "a "
    let output = 1
    XCTAssertEqual(LengthOfLastWord().lengthOfLastWord(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class MinimumAddToMakeParenthesesValidTests: XCTestCase {
  func testMinAddToMakeValid1() {
    let input = "())"
    let output = 1
    XCTAssertEqual(MinimumAddToMakeParenthesesValid().minAddToMakeValid(input), output)
  }

  func testMinAddToMakeValid2() {
    let input = "((("
    let output = 3
    XCTAssertEqual(MinimumAddToMakeParenthesesValid().minAddToMakeValid(input), output)
  }
}

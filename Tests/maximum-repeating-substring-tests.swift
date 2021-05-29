@testable
import Leetcode
import XCTest

final class MaximumRepeatingSubstringTests: XCTestCase {
  func testMaxRepeating1() {
    let input = ("ababc", "ab")
    let output = 2
    XCTAssertEqual(MaximumRepeatingSubstring().maxRepeating(input.0, input.1), output)
  }

  func testMaxRepeating2() {
    let input = ("ababc", "ba")
    let output = 1
    XCTAssertEqual(MaximumRepeatingSubstring().maxRepeating(input.0, input.1), output)
  }

  func testMaxRepeating3() {
    let input = ("ababc", "ac")
    let output = 0
    XCTAssertEqual(MaximumRepeatingSubstring().maxRepeating(input.0, input.1), output)
  }

  func testMaxRepeating4() {
    let input = ("a", "a")
    let output = 1
    XCTAssertEqual(MaximumRepeatingSubstring().maxRepeating(input.0, input.1), output)
  }

  func testMaxRepeating5() {
    let input = ("aaabaaaabaaabaaaabaaaabaaaabaaaaba", "aaaba")
    let output = 5
    XCTAssertEqual(MaximumRepeatingSubstring().maxRepeating(input.0, input.1), output)
  }
}

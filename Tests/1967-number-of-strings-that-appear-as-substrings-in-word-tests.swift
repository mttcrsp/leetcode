@testable
import Leetcode
import XCTest

final class NumberOfStringsThatAppearAsSubstringsInWordTests: XCTestCase {
  func testNumOfStrings1() {
    let input = (["a", "abc", "bc", "d"], "abc")
    let output = 3
    XCTAssertEqual(NumberOfStringsThatAppearAsSubstringsInWord().numOfStrings(input.0, input.1), output)
  }

  func testNumOfStrings2() {
    let input = (["a", "b", "c"], "aaaaabbbbb")
    let output = 2
    XCTAssertEqual(NumberOfStringsThatAppearAsSubstringsInWord().numOfStrings(input.0, input.1), output)
  }

  func testNumOfStrings3() {
    let input = (["a", "a", "a"], "ab")
    let output = 3
    XCTAssertEqual(NumberOfStringsThatAppearAsSubstringsInWord().numOfStrings(input.0, input.1), output)
  }
}

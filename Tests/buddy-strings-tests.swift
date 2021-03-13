@testable
import Leetcode
import XCTest

final class BuddyStringsTests: XCTestCase {
  func testBuddyStrings1() {
    let input = ("ab", "ba")
    let output = true
    XCTAssertEqual(BuddyStrings().buddyStrings(input.0, input.1), output)
  }

  func testBuddyStrings2() {
    let input = ("ab", "ab")
    let output = false
    XCTAssertEqual(BuddyStrings().buddyStrings(input.0, input.1), output)
  }

  func testBuddyStrings3() {
    let input = ("aa", "aa")
    let output = true
    XCTAssertEqual(BuddyStrings().buddyStrings(input.0, input.1), output)
  }

  func testBuddyStrings4() {
    let input = ("aaaaaaabc", "aaaaaaacb")
    let output = true
    XCTAssertEqual(BuddyStrings().buddyStrings(input.0, input.1), output)
  }

  func testBuddyStrings5() {
    let input = ("ab", "babbb")
    let output = false
    XCTAssertEqual(BuddyStrings().buddyStrings(input.0, input.1), output)
  }
}

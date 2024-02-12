@testable
import Leetcode
import XCTest

final class MinimumNumberOfPushesToTypeWordITests: XCTestCase {
  func testMinimumpushes1() {
    let input = "abcde"
    let output = 5
    XCTAssertEqual(MinimumNumberOfPushesToTypeWordI().minimumPushes(input), output)
  }

  func testMinimumpushes2() {
    let input = "xycdefghij"
    let output = 12
    XCTAssertEqual(MinimumNumberOfPushesToTypeWordI().minimumPushes(input), output)
  }
}

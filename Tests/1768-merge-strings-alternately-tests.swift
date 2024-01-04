@testable
import Leetcode
import XCTest

final class MergeStringsAlternatelyTests: XCTestCase {
  func testTestMergealternately1() {
    let input = ("abc", "pqr")
    let output = "apbqcr"
    XCTAssertEqual(MergeStringsAlternately().mergeAlternately(input.0, input.1), output)
  }

  func testTestMergealternately3() {
    let input = ("ab", "pqrs")
    let output = "apbqrs"
    XCTAssertEqual(MergeStringsAlternately().mergeAlternately(input.0, input.1), output)
  }

  func testTestMergealternately5() {
    let input = ("abcd", "pq")
    let output = "apbqcd"
    XCTAssertEqual(MergeStringsAlternately().mergeAlternately(input.0, input.1), output)
  }
}

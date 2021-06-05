@testable
import Leetcode
import XCTest

final class MinimumChangesToMakeAlternatingBinaryStringTests: XCTestCase {
  func testMinOperations1() {
    let input = "0100"
    let output = 1
    XCTAssertEqual(MinimumChangesToMakeAlternatingBinaryString().minOperations(input), output)
  }

  func testMinOperations2() {
    let input = "10"
    let output = 0
    XCTAssertEqual(MinimumChangesToMakeAlternatingBinaryString().minOperations(input), output)
  }

  func testMinOperations3() {
    let input = "1111"
    let output = 2
    XCTAssertEqual(MinimumChangesToMakeAlternatingBinaryString().minOperations(input), output)
  }

  func testMinOperations4() {
    let input = "00111"
    let output = 2
    XCTAssertEqual(MinimumChangesToMakeAlternatingBinaryString().minOperations(input), output)
  }
}

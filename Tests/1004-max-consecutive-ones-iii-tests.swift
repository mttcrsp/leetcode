@testable
import Leetcode
import XCTest

final class MaxConsecutiveOnesIiiTests: XCTestCase {
  func testLongestones1() {
    let input = ([1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0], 2)
    let output = 6
    XCTAssertEqual(MaxConsecutiveOnesIii().longestOnes(input.0, input.1), output)
  }

  func testLongestones2() {
    let input = ([0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 1, 1, 1], 3)
    let output = 10
    XCTAssertEqual(MaxConsecutiveOnesIii().longestOnes(input.0, input.1), output)
  }

  func testLongestones3() {
    let input = ([0, 0, 0, 1], 4)
    let output = 4
    XCTAssertEqual(MaxConsecutiveOnesIii().longestOnes(input.0, input.1), output)
  }
}

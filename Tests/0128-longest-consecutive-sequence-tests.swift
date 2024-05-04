@testable
import Leetcode
import XCTest

final class LongestConsecutiveSequenceTests: XCTestCase {
  func testLongestconsecutive1() {
    let input = [100, 4, 200, 1, 3, 2]
    let output = 4
    XCTAssertEqual(LongestConsecutiveSequence().longestConsecutive(input), output)
  }

  func testLongestconsecutive2() {
    let input = [0, 3, 7, 2, 5, 8, 4, 6, 0, 1]
    let output = 9
    XCTAssertEqual(LongestConsecutiveSequence().longestConsecutive(input), output)
  }

  func testLongestconsecutive3() {
    let input = [] as [Int]
    let output = 0
    XCTAssertEqual(LongestConsecutiveSequence().longestConsecutive(input), output)
  }

  func testLongestconsecutive4() {
    let input = [1, 2, 0, 1]
    let output = 3
    XCTAssertEqual(LongestConsecutiveSequence().longestConsecutive(input), output)
  }
}

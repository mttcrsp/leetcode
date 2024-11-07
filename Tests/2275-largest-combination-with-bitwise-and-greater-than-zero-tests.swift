@testable
import Leetcode
import XCTest

final class LargestCombinationWithBitwiseAndGreaterThanZeroTests: XCTestCase {
  func testLargestCombination1() {
    let input = [16, 17, 71, 62, 12, 24, 14]
    let output = 4
    XCTAssertEqual(LargestCombinationWithBitwiseAndGreaterThanZero().largestCombination(input), output)
  }

  func testLargestCombination2() {
    let input = [8, 8]
    let output = 2
    XCTAssertEqual(LargestCombinationWithBitwiseAndGreaterThanZero().largestCombination(input), output)
  }
}

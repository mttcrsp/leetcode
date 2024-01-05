@testable
import Leetcode
import XCTest

final class SuccessfulPairsOfSpellsAndPotionsTests: XCTestCase {
  func testTestSuccessfulpairs1() {
    let input = ([5, 1, 3], [1, 2, 3, 4, 5], 7)
    let output = [4, 0, 3]
    XCTAssertEqual(SuccessfulPairsOfSpellsAndPotions().successfulPairs(input.0, input.1, input.2), output)
  }

  func testTestSuccessfulpairs4() {
    let input = ([3, 1, 2], [8, 5, 8], 16)
    let output = [2, 0, 2]
    XCTAssertEqual(SuccessfulPairsOfSpellsAndPotions().successfulPairs(input.0, input.1, input.2), output)
  }
}

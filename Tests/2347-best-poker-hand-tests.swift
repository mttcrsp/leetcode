@testable
import Leetcode
import XCTest

final class BestPokerHandTests: XCTestCase {
  func testTestBesthand1() {
    let input = ([13, 2, 3, 1, 9], ["a", "a", "a", "a", "a"] as [Character])
    let output = "Flush"
    XCTAssertEqual(BestPokerHand().bestHand(input.0, input.1), output)
  }

  func testTestBesthand2() {
    let input = ([4, 4, 2, 4, 4], ["d", "a", "a", "b", "c"] as [Character])
    let output = "Three of a Kind"
    XCTAssertEqual(BestPokerHand().bestHand(input.0, input.1), output)
  }

  func testTestBesthand3() {
    let input = ([10, 10, 2, 12, 9], ["a", "b", "c", "a", "d"] as [Character])
    let output = "Pair"
    XCTAssertEqual(BestPokerHand().bestHand(input.0, input.1), output)
  }
}

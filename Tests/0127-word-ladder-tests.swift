@testable
import Leetcode
import XCTest

final class WordLadderTests: XCTestCase {
  func testLadderLength1() {
    let input = ("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"])
    let output = 5
    XCTAssertEqual(WordLadder().ladderLength(input.0, input.1, input.2), output)
  }

  func testLadderLength2() {
    let input = ("hit", "cog", ["hot", "dot", "dog", "lot", "log"])
    let output = 0
    XCTAssertEqual(WordLadder().ladderLength(input.0, input.1, input.2), output)
  }
}

@testable
import Leetcode
import XCTest

final class WordSearchTests: XCTestCase {
  func testExist1() {
    let input = ([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]] as [[Character]], "ABCCED")
    let output = true
    XCTAssertEqual(WordSearch().exist(input.0, input.1), output)
  }

  func testExist2() {
    let input = ([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]] as [[Character]], "SEE")
    let output = true
    XCTAssertEqual(WordSearch().exist(input.0, input.1), output)
  }

  func testExist3() {
    let input = ([["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]] as [[Character]], "ABCB")
    let output = false
    XCTAssertEqual(WordSearch().exist(input.0, input.1), output)
  }
}

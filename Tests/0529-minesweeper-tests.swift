@testable
import Leetcode
import XCTest

final class MinesweeperTests: XCTestCase {
  func testUpdateBoard1() {
    let input: ([[Character]], [Int]) = ([["E", "E", "E", "E", "E"], ["E", "E", "M", "E", "E"], ["E", "E", "E", "E", "E"], ["E", "E", "E", "E", "E"]], [3, 0])
    let output: [[Character]] = [["B", "1", "E", "1", "B"], ["B", "1", "M", "1", "B"], ["B", "1", "1", "1", "B"], ["B", "B", "B", "B", "B"]]
    XCTAssertEqual(Minesweeper().updateBoard(input.0, input.1).map { String($0) }.joined(separator: "|"), output.map { String($0) }.joined(separator: "|"))
  }

  func testUpdateBoard2() {
    let input: ([[Character]], [Int]) = ([["B", "1", "E", "1", "B"], ["B", "1", "M", "1", "B"], ["B", "1", "1", "1", "B"], ["B", "B", "B", "B", "B"]], [1, 2])
    let output: [[Character]] = [["B", "1", "E", "1", "B"], ["B", "1", "X", "1", "B"], ["B", "1", "1", "1", "B"], ["B", "B", "B", "B", "B"]]
    XCTAssertEqual(Minesweeper().updateBoard(input.0, input.1).map { String($0) }.joined(separator: "|"), output.map { String($0) }.joined(separator: "|"))
  }
}

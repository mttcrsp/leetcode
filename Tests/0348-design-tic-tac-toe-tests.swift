@testable
import Leetcode
import XCTest

final class TicTacToeTests: XCTestCase {
  func testMove1() {
    let board = TicTacToe(3)
    XCTAssertEqual(board.move(0, 0, 1), 0)
    XCTAssertEqual(board.move(0, 2, 2), 0)
    XCTAssertEqual(board.move(2, 2, 1), 0)
    XCTAssertEqual(board.move(1, 1, 2), 0)
    XCTAssertEqual(board.move(2, 0, 1), 0)
    XCTAssertEqual(board.move(1, 0, 2), 0)
    XCTAssertEqual(board.move(2, 1, 1), 1)
  }

  func testMove2() {
    let board = TicTacToe(3)
    XCTAssertEqual(board.move(0, 0, 1), 0)
    XCTAssertEqual(board.move(1, 1, 2), 0)
    XCTAssertEqual(board.move(2, 2, 1), 0)
    XCTAssertEqual(board.move(0, 2, 2), 0)
    XCTAssertEqual(board.move(0, 1, 1), 0)
    XCTAssertEqual(board.move(2, 0, 2), 2)
  }
}

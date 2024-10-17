@testable
import Leetcode
import Testing

@Suite
struct TicTacToeTests {
  @Test func testMove1() {
    let board = TicTacToe(3)
    #expect(board.move(0, 0, 1) == 0)
    #expect(board.move(0, 2, 2) == 0)
    #expect(board.move(2, 2, 1) == 0)
    #expect(board.move(1, 1, 2) == 0)
    #expect(board.move(2, 0, 1) == 0)
    #expect(board.move(1, 0, 2) == 0)
    #expect(board.move(2, 1, 1) == 1)
  }

  @Test func testMove2() {
    let board = TicTacToe(3)
    #expect(board.move(0, 0, 1) == 0)
    #expect(board.move(1, 1, 2) == 0)
    #expect(board.move(2, 2, 1) == 0)
    #expect(board.move(0, 2, 2) == 0)
    #expect(board.move(0, 1, 1) == 0)
    #expect(board.move(2, 0, 2) == 2)
  }
}

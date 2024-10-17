@testable
import Leetcode
import Testing

@Suite
struct MoveZeroesTests {
  @Test func testMoveZeroes1() {
    var input = [0, 1, 0, 3, 12]
    let output = [1, 3, 12, 0, 0]
    MoveZeroes().moveZeroes(&input)
    #expect(input == output)
  }

  @Test func testMoveZeroes2() {
    var input = [0]
    let output = [0]
    MoveZeroes().moveZeroes(&input)
    #expect(input == output)
  }

  @Test func testMoveZeroes3() {
    var input = [] as [Int]
    let output = [] as [Int]
    MoveZeroes().moveZeroes(&input)
    #expect(input == output)
  }

  @Test func testMoveZeroes4() {
    var input = [0, 0, 0, 1, 2] as [Int]
    let output = [1, 2, 0, 0, 0] as [Int]
    MoveZeroes().moveZeroes(&input)
    #expect(input == output)
  }
}

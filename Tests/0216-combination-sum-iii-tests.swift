@testable
import Leetcode
import Testing

@Suite
struct CombinationSumIiiTests {
  @Test func testCombinationsum31() {
    let input = (3, 7)
    let output = [[1, 2, 4]]
    #expect(CombinationSumIii().combinationSum3(input.0, input.1) == output)
  }

  @Test func testCombinationsum32() {
    let input = (3, 9)
    let output = [[1, 2, 6], [1, 3, 5], [2, 3, 4]]
    #expect(CombinationSumIii().combinationSum3(input.0, input.1) == output)
  }

  @Test func testCombinationsum33() {
    let input = (4, 1)
    let output = [] as [[Int]]
    #expect(CombinationSumIii().combinationSum3(input.0, input.1) == output)
  }

  @Test func testCombinationsum34() {
    let input = (9, 45)
    let output = [[1, 2, 3, 4, 5, 6, 7, 8, 9]]
    #expect(CombinationSumIii().combinationSum3(input.0, input.1) == output)
  }
}

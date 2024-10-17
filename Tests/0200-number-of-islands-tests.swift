@testable
import Leetcode
import Testing

@Suite
struct NumberOfIslandsTests {
  @Test func testNumislands1() {
    let input = [["1", "1", "1", "1", "0"], ["1", "1", "0", "1", "0"], ["1", "1", "0", "0", "0"], ["0", "0", "0", "0", "0"]] as [[Character]]
    let output = 1
    #expect(NumberOfIslands().numIslands(input) == output)
  }

  @Test func testNumislands2() {
    let input = [["1", "1", "0", "0", "0"], ["1", "1", "0", "0", "0"], ["0", "0", "1", "0", "0"], ["0", "0", "0", "1", "1"]] as [[Character]]
    let output = 3
    #expect(NumberOfIslands().numIslands(input) == output)
  }
}

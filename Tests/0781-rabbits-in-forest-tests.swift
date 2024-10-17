@testable
import Leetcode
import Testing

@Suite
struct RabbitsInForestTests {
  @Test func testNumRabbits1() {
    let input = [1, 1, 2]
    let output = 5
    #expect(RabbitsInForest().numRabbits(input) == output)
  }

  @Test func testNumRabbits2() {
    let input = [10, 10, 10]
    let output = 11
    #expect(RabbitsInForest().numRabbits(input) == output)
  }

  @Test func testNumRabbits3() {
    let input = [1, 1, 1, 2]
    let output = 7
    #expect(RabbitsInForest().numRabbits(input) == output)
  }

  @Test func testNumRabbits4() {
    let input = [0, 0]
    let output = 2
    #expect(RabbitsInForest().numRabbits(input) == output)
  }
}

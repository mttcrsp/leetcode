@testable
import Leetcode
import Testing

@Suite
struct FruitIntoBasketsTests {
  @Test func testTotalFruit1() {
    let input = [1, 2, 1]
    let output = 3
    #expect(FruitIntoBaskets().totalFruit(input) == output)
  }

  @Test func testTotalFruit2() {
    let input = [0, 1, 2, 2]
    let output = 3
    #expect(FruitIntoBaskets().totalFruit(input) == output)
  }

  @Test func testTotalFruit3() {
    let input = [1, 2, 3, 2, 2]
    let output = 4
    #expect(FruitIntoBaskets().totalFruit(input) == output)
  }

  @Test func testTotalFruit4() {
    let input = [1, 2, 3, 2, 2, 4, 2, 4, 4, 1, 2, 3]
    let output = 6
    #expect(FruitIntoBaskets().totalFruit(input) == output)
  }
}

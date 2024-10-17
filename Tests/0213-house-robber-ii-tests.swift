@testable
import Leetcode
import Testing

@Suite
struct HouseRobberIiTests {
  @Test func testRob1() {
    let input = [2, 3, 2]
    let output = 3
    #expect(HouseRobberIi().rob(input) == output)
  }

  @Test func testRob2() {
    let input = [1, 2, 3, 1]
    let output = 4
    #expect(HouseRobberIi().rob(input) == output)
  }

  @Test func testRob3() {
    let input = [1, 2, 3]
    let output = 3
    #expect(HouseRobberIi().rob(input) == output)
  }
}

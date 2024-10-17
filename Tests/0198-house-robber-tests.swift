@testable
import Leetcode
import Testing

@Suite
struct HouseRobberTests {
  @Test func testRob1() {
    let input = [1, 2, 3, 1]
    let output = 4
    #expect(HouseRobber().rob(input) == output)
  }

  @Test func testRob2() {
    let input = [2, 7, 9, 3, 1]
    let output = 12
    #expect(HouseRobber().rob(input) == output)
  }

  @Test func testRob3() {
    let input = [12, 7, 9, 88]
    let output = 100
    #expect(HouseRobber().rob(input) == output)
  }

  @Test func testRob4() {
    let input = [] as [Int]
    let output = 0
    #expect(HouseRobber().rob(input) == output)
  }

  @Test func testRob5() {
    let input = [1]
    let output = 1
    #expect(HouseRobber().rob(input) == output)
  }

  @Test func testRob6() {
    let input = [2, 1]
    let output = 2
    #expect(HouseRobber().rob(input) == output)
  }

  @Test func testRob7() {
    let input = [1, 2]
    let output = 2
    #expect(HouseRobber().rob(input) == output)
  }
}

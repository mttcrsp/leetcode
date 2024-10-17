@testable
import Leetcode
import Testing

@Suite
struct FindLuckyIntegerInAnArrayTests {
  @Test func testFindLucky1() {
    let input = [2, 2, 3, 4]
    let output = 2
    #expect(FindLuckyIntegerInAnArray().findLucky(input) == output)
  }

  @Test func testFindLucky2() {
    let input = [1, 2, 2, 3, 3, 3]
    let output = 3
    #expect(FindLuckyIntegerInAnArray().findLucky(input) == output)
  }

  @Test func testFindLucky3() {
    let input = [2, 2, 2, 3, 3]
    let output = -1
    #expect(FindLuckyIntegerInAnArray().findLucky(input) == output)
  }

  @Test func testFindLucky4() {
    let input = [5]
    let output = -1
    #expect(FindLuckyIntegerInAnArray().findLucky(input) == output)
  }

  @Test func testFindLucky5() {
    let input = [7, 7, 7, 7, 7, 7, 7]
    let output = 7
    #expect(FindLuckyIntegerInAnArray().findLucky(input) == output)
  }
}

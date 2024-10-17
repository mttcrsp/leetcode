@testable
import Leetcode
import Testing

@Suite
struct HeightCheckerTests {
  @Test func testHeightChecker1() {
    let input = [1, 1, 4, 2, 1, 3]
    let output = 3
    #expect(HeightChecker().heightChecker(input) == output)
  }

  @Test func testHeightChecker2() {
    let input = [5, 1, 2, 3, 4]
    let output = 5
    #expect(HeightChecker().heightChecker(input) == output)
  }

  @Test func testHeightChecker3() {
    let input = [1, 2, 3, 4, 5]
    let output = 0
    #expect(HeightChecker().heightChecker(input) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct RangeAdditionIiTests {
  @Test func testMaxCount1() {
    let input = (3, 3, [[2, 2], [3, 3]])
    let output = 4
    #expect(RangeAdditionIi().maxCount(input.0, input.1, input.2) == output)
  }

  @Test func testMaxCount2() {
    let input = (3, 3, [[2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3]])
    let output = 4
    #expect(RangeAdditionIi().maxCount(input.0, input.1, input.2) == output)
  }

  @Test func testMaxCount3() {
    let input = (3, 3, [] as [[Int]])
    let output = 9
    #expect(RangeAdditionIi().maxCount(input.0, input.1, input.2) == output)
  }

  @Test func testMaxCount4() {
    let input = (40000, 40000, [] as [[Int]])
    let output = 1_600_000_000
    #expect(RangeAdditionIi().maxCount(input.0, input.1, input.2) == output)
  }

  @Test func testMaxCount5() {
    let input = (39999, 39999, [[19999, 19999]])
    let output = 399_960_001
    #expect(RangeAdditionIi().maxCount(input.0, input.1, input.2) == output)
  }
}

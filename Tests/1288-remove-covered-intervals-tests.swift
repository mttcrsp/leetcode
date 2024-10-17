@testable
import Leetcode
import Testing

@Suite
struct RemoveCoveredIntervalsTests {
  @Test func testRemoveCoveredIntervals1() {
    let input = [[1, 4], [3, 6], [2, 8]]
    let output = 2
    #expect(RemoveCoveredIntervals().removeCoveredIntervals(input) == output)
  }

  @Test func testRemoveCoveredIntervals2() {
    let input = [[1, 4], [2, 3]]
    let output = 1
    #expect(RemoveCoveredIntervals().removeCoveredIntervals(input) == output)
  }

  @Test func testRemoveCoveredIntervals3() {
    let input = [[0, 10], [5, 12]]
    let output = 2
    #expect(RemoveCoveredIntervals().removeCoveredIntervals(input) == output)
  }

  @Test func testRemoveCoveredIntervals4() {
    let input = [[3, 10], [4, 10], [5, 11]]
    let output = 2
    #expect(RemoveCoveredIntervals().removeCoveredIntervals(input) == output)
  }

  @Test func testRemoveCoveredIntervals5() {
    let input = [[1, 2], [1, 4], [3, 4]]
    let output = 1
    #expect(RemoveCoveredIntervals().removeCoveredIntervals(input) == output)
  }
}

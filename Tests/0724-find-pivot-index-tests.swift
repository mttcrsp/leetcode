@testable
import Leetcode
import Testing

@Suite
struct FindPivotIndexTests {
  @Test func testPivotIndex1() {
    let input = [1, 7, 3, 6, 5, 6]
    let output = 3
    #expect(FindPivotIndex().pivotIndex(input) == output)
  }

  @Test func testPivotIndex2() {
    let input = [1, 2, 3]
    let output = -1
    #expect(FindPivotIndex().pivotIndex(input) == output)
  }

  @Test func testPivotIndex3() {
    let input = [2, 1, -1]
    let output = 0
    #expect(FindPivotIndex().pivotIndex(input) == output)
  }

  @Test func testPivotIndex4() {
    let input = [-1, 1, 2]
    let output = 2
    #expect(FindPivotIndex().pivotIndex(input) == output)
  }
}

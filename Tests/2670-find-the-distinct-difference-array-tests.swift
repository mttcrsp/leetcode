@testable
import Leetcode
import Testing

@Suite
struct FindTheDistinctDifferenceArrayTests {
  @Test func testDistinctdifferencearray1() {
    let input = [1, 2, 3, 4, 5]
    let output = [-3, -1, 1, 3, 5]
    #expect(FindTheDistinctDifferenceArray().distinctDifferenceArray(input) == output)
  }

  @Test func testDistinctdifferencearray2() {
    let input = [3, 2, 3, 4, 2]
    let output = [-2, -1, 0, 2, 3]
    #expect(FindTheDistinctDifferenceArray().distinctDifferenceArray(input) == output)
  }

  @Test func testDistinctdifferencearray3() {
    let input = [9, 6, 7, 5, 5, 4, 7, 9]
    let output = [-4, -2, -1, 0, 1, 3, 4, 5]
    #expect(FindTheDistinctDifferenceArray().distinctDifferenceArray(input) == output)
  }
}

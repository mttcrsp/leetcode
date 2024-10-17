@testable
import Leetcode
import Testing

@Suite
struct FindMinimumInRotatedSortedArrayTests {
  @Test func testFindmin1() {
    let input = [3, 4, 5, 1, 2]
    let output = 1
    #expect(FindMinimumInRotatedSortedArray().findMin(input) == output)
  }

  @Test func testFindmin2() {
    let input = [4, 5, 6, 7, 0, 1, 2]
    let output = 0
    #expect(FindMinimumInRotatedSortedArray().findMin(input) == output)
  }

  @Test func testFindmin3() {
    let input = [11, 13, 15, 17]
    let output = 11
    #expect(FindMinimumInRotatedSortedArray().findMin(input) == output)
  }
}

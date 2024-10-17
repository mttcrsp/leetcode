@testable
import Leetcode
import Testing

@Suite
struct MedianOfTwoSortedArraysTests {
  @Test func testFindMedianSortedArrays1() {
    let input = ([1, 3], [2])
    let output = 2.0
    #expect(MedianOfTwoSortedArrays().findMedianSortedArrays(input.0, input.1) == output)
  }

  @Test func testFindMedianSortedArrays2() {
    let input = ([1, 2], [3, 4])
    let output = 2.5
    #expect(MedianOfTwoSortedArrays().findMedianSortedArrays(input.0, input.1) == output)
  }
}

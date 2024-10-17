@testable
import Leetcode
import Testing

@Suite
struct SearchInRotatedSortedArrayTests {
  @Test func testSearch1() {
    let input = ([4, 5, 6, 7, 0, 1, 2], 0)
    let output = 4
    #expect(SearchInRotatedSortedArray().search(input.0, input.1) == output)
  }

  @Test func testSearch2() {
    let input = ([4, 5, 6, 7, 0, 1, 2], 3)
    let output = -1
    #expect(SearchInRotatedSortedArray().search(input.0, input.1) == output)
  }

  @Test func testSearch3() {
    let input = ([1], 0)
    let output = -1
    #expect(SearchInRotatedSortedArray().search(input.0, input.1) == output)
  }

  @Test func testSearch4() {
    let input = ([1, 3, 5], 3)
    let output = 1
    #expect(SearchInRotatedSortedArray().search(input.0, input.1) == output)
  }
}

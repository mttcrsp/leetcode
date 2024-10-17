@testable
import Leetcode
import Testing

@Suite
struct SearchInsertPositionTests {
  @Test func testSearchInsert1() {
    let input = ([1, 3, 5, 6], 5)
    let output = 2
    #expect(SearchInsertPosition().searchInsert(input.0, input.1) == output)
  }

  @Test func testSearchInsert2() {
    let input = ([1, 3, 5, 6], 2)
    let output = 1
    #expect(SearchInsertPosition().searchInsert(input.0, input.1) == output)
  }

  @Test func testSearchInsert3() {
    let input = ([1, 3, 5, 6], 7)
    let output = 4
    #expect(SearchInsertPosition().searchInsert(input.0, input.1) == output)
  }
}

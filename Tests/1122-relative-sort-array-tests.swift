@testable
import Leetcode
import Testing

@Suite
struct RelativeSortArrayTests {
  @Test func testRelativeSortArray1() {
    let input = ([2, 3, 1, 3, 2, 4, 6, 7, 9, 2, 19], [2, 1, 4, 3, 9, 6])
    let output = [2, 2, 2, 1, 4, 3, 3, 9, 6, 7, 19]
    #expect(RelativeSortArray().relativeSortArray(input.0, input.1) == output)
  }

  @Test func testRelativeSortArray2() {
    let input = ([28, 6, 22, 8, 44, 17], [22, 28, 8, 6])
    let output = [22, 28, 8, 6, 17, 44]
    #expect(RelativeSortArray().relativeSortArray(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct FindFirstAndLastPositionOfElementInSortedArrayTests {
  @Test func testSearchrange1() {
    let input = ([5, 7, 7, 8, 8, 10], 8)
    let output = [3, 4]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange2() {
    let input = ([5, 7, 7, 8, 8, 10], 6)
    let output = [-1, -1]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange3() {
    let input = ([] as [Int], 0)
    let output = [-1, -1]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange4() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 8)
    let output = [3, 5]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange5() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 10)
    let output = [6, 6]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange6() {
    let input = ([5, 7, 7, 8, 8, 8, 10], 5)
    let output = [0, 0]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange7() {
    let input = ([5, 5, 7, 7, 8, 8, 8, 10], 5)
    let output = [0, 1]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }

  @Test func testSearchrange8() {
    let input = ([1], 0)
    let output = [-1, -1]
    #expect(FindFirstAndLastPositionOfElementInSortedArray().searchRange(input.0, input.1) == output)
  }
}

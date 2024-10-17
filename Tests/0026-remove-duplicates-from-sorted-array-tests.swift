@testable
import Leetcode
import Testing

@Suite
struct RemoveDuplicatesFromSortedArrayTests {
  @Test func testRemoveDuplicates1() {
    var input = [1, 1, 2]
    let output = RemoveDuplicatesFromSortedArray().removeDuplicates(&input)
    #expect(Array(input.prefix(output)) == [1, 2])
  }

  @Test func testRemoveDuplicates2() {
    var input = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
    let output = RemoveDuplicatesFromSortedArray().removeDuplicates(&input)
    #expect(Array(input.prefix(output)) == [0, 1, 2, 3, 4])
  }
}

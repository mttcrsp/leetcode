@testable
import Leetcode
import Testing

@Suite
struct RemoveDuplicatesFromSortedArrayIiTests {
  @Test func testRemoveDuplicates1() {
    var input = [1, 1, 1, 2, 2, 3]
    let count = RemoveDuplicatesFromSortedArrayIi().removeDuplicates(&input)
    let output = [1, 1, 2, 2, 3]
    #expect(Array(input.prefix(count)) == output)
  }

  @Test func testRemoveDuplicates2() {
    var input = [0, 0, 1, 1, 1, 1, 2, 3, 3]
    let count = RemoveDuplicatesFromSortedArrayIi().removeDuplicates(&input)
    let output = [0, 0, 1, 1, 2, 3, 3]
    #expect(Array(input.prefix(count)) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct SingleElementInASortedArrayTests {
  @Test func testSingleNonDuplicate1() {
    let input = [1, 1, 2, 3, 3, 4, 4, 8, 8]
    let output = 2
    #expect(SingleElementInASortedArray().singleNonDuplicate(input) == output)
  }

  @Test func testSingleNonDuplicate2() {
    let input = [3, 3, 7, 7, 10, 11, 11]
    let output = 10
    #expect(SingleElementInASortedArray().singleNonDuplicate(input) == output)
  }
}

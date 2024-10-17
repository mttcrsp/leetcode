@testable
import Leetcode
import Testing

@Suite
struct MissingElementInSortedArrayTests {
  @Test func testMissingElement1() {
    let input = ([4, 7, 9, 10], 1)
    let output = 5
    #expect(MissingElementInSortedArray().missingElement(input.0, input.1) == output)
  }

  @Test func testMissingElement2() {
    let input = ([4, 7, 9, 10], 3)
    let output = 8
    #expect(MissingElementInSortedArray().missingElement(input.0, input.1) == output)
  }

  @Test func testMissingElement3() {
    let input = ([1, 2, 4], 3)
    let output = 6
    #expect(MissingElementInSortedArray().missingElement(input.0, input.1) == output)
  }
}

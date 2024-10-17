@testable
import Leetcode
import Testing

@Suite
struct RemoveElementTests {
  @Test func testRemoveelement1() {
    var input = ([3, 2, 2, 3], 3)
    let count = RemoveElement().removeElement(&input.0, input.1)
    let output = [2, 2]
    #expect(Array(input.0.prefix(count)) == output)
  }

  @Test func testRemoveelement3() {
    var input = ([0, 1, 2, 2, 3, 0, 4, 2], 2)
    let count = RemoveElement().removeElement(&input.0, input.1)
    let output = [0, 1, 3, 0, 4]
    #expect(Array(input.0.prefix(count)) == output)
  }
}

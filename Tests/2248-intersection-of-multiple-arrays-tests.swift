@testable
import Leetcode
import Testing

@Suite
struct IntersectionOfMultipleArraysTests {
  @Test func testIntersection1() {
    let input = [[3, 1, 2, 4, 5], [1, 2, 3, 4], [3, 4, 5, 6]]
    let output = [3, 4]
    #expect(IntersectionOfMultipleArrays().intersection(input) == output)
  }

  @Test func testIntersection2() {
    let input = [[1, 2, 3], [4, 5, 6]]
    let output = [] as [Int]
    #expect(IntersectionOfMultipleArrays().intersection(input) == output)
  }
}

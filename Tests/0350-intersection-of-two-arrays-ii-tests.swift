@testable
import Leetcode
import Testing

@Suite
struct IntersectionOfTwoArraysIiTests {
  @Test func testIntersect1() {
    let input = ([1, 2, 2, 1], [2, 2])
    let output = [2, 2]
    #expect(Set(IntersectionOfTwoArraysIi().intersect(input.0, input.1)) == Set(output))
  }

  @Test func testIntersect2() {
    let input = ([4, 9, 5], [9, 4, 9, 8, 4])
    let output = [4, 9]
    #expect(Set(IntersectionOfTwoArraysIi().intersect(input.0, input.1)) == Set(output))
  }
}

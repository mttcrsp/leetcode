@testable
import Leetcode
import Testing

@Suite
struct FindTheDifferenceOfTwoArraysTests {
  @Test func testFinddifference1() {
    let input = ([1, 2, 3], [2, 4, 6])
    let output: [Set<Int>] = [[1, 3], [4, 6]]
    #expect(FindTheDifferenceOfTwoArrays().findDifference(input.0, input.1).map(Set.init) == output)
  }

  @Test func testFinddifference2() {
    let input = ([1, 2, 3, 3], [1, 1, 2, 2])
    let output: [Set<Int>] = [[3], []]
    #expect(FindTheDifferenceOfTwoArrays().findDifference(input.0, input.1).map(Set.init) == output)
  }
}

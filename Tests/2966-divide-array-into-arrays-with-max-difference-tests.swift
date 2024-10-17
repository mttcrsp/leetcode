@testable
import Leetcode
import Testing

@Suite
struct DivideArrayIntoArraysWithMaxDifferenceTests {
  @Test func testDividearray1() {
    let input = ([1, 3, 4, 8, 7, 9, 3, 5, 1], 2)
    let output = [[1, 1, 3], [3, 4, 5], [7, 8, 9]]
    #expect(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1) == output)
  }

  @Test func testDividearray2() {
    let input = ([1, 3, 3, 2, 7, 3], 3)
    let output = [] as [[Int]]
    #expect(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1) == output)
  }

  @Test func testDividearray3() {
    let input = ([1, 1, 1, 1, 1, 1], 0)
    let output = [[1, 1, 1], [1, 1, 1]]
    #expect(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1) == output)
  }

  @Test func testDividearray4() {
    let input = ([1, 1, 1, 1, 1], 0)
    let output = [] as [[Int]]
    #expect(DivideArrayIntoArraysWithMaxDifference().divideArray(input.0, input.1) == output)
  }
}

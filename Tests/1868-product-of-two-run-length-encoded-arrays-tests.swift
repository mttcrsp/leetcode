@testable
import Leetcode
import Testing

@Suite
struct ProductOfTwoRunLengthEncodedArraysTests {
  @Test func testFindRLEArray1() {
    let input = ([[1, 3], [2, 3]], [[6, 3], [3, 3]])
    let output = [[6, 6]]
    #expect(ProductOfTwoRunLengthEncodedArrays().findRLEArray(input.0, input.1) == output)
  }

  @Test func testFindRLEArray2() {
    let input = ([[1, 3], [2, 1], [3, 2]], [[2, 3], [3, 3]])
    let output = [[2, 3], [6, 1], [9, 2]]
    #expect(ProductOfTwoRunLengthEncodedArrays().findRLEArray(input.0, input.1) == output)
  }
}

@testable
import Leetcode
import Testing

@Suite
struct FindTriangularSumOfAnArrayTests {
  @Test func testTriangularSum1() {
    let input = [1, 2, 3, 4, 5]
    let output = 8
    #expect(FindTriangularSumOfAnArray().triangularSum(input) == output)
  }

  @Test func testTriangularSum2() {
    let input = [5]
    let output = 5
    #expect(FindTriangularSumOfAnArray().triangularSum(input) == output)
  }
}

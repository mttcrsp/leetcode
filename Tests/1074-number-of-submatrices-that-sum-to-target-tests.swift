@testable
import Leetcode
import Testing

@Suite
struct NumberOfSubmatricesThatSumToTargetTests {
  @Test func testNumsubmatrixsumtarget1() {
    let input = ([[0, 1, 0], [1, 1, 1], [0, 1, 0]], 0)
    let output = 4
    #expect(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1) == output)
  }

  @Test func testNumsubmatrixsumtarget3() {
    let input = ([[1, -1], [-1, 1]], 0)
    let output = 5
    #expect(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1) == output)
  }

  @Test func testNumsubmatrixsumtarget5() {
    let input = ([[904]], 0)
    let output = 0
    #expect(NumberOfSubmatricesThatSumToTarget().numSubmatrixSumTarget(input.0, input.1) == output)
  }
}

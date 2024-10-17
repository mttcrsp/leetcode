@testable
import Leetcode
import Testing

@Suite
struct KthSmallestElementInASortedMatrixTests {
  @Test func testKthSmallest1() {
    let input = ([[1, 5, 9], [10, 11, 13], [12, 13, 15]], 8)
    let output = 13
    #expect(KthSmallestElementInASortedMatrix().kthSmallest(input.0, input.1) == output)
  }

  @Test func testKthSmallest2() {
    let input = ([[-5]], 1)
    let output = -5
    #expect(KthSmallestElementInASortedMatrix().kthSmallest(input.0, input.1) == output)
  }

  @Test func testKthSmallest3() {
    let input = ([[-5, -4], [-5, -4]], 2)
    let output = -5
    #expect(KthSmallestElementInASortedMatrix().kthSmallest(input.0, input.1) == output)
  }

  @Test func testKthSmallest4() {
    let input = ([[1, 3, 5], [6, 7, 12], [11, 14, 14]], 1)
    let output = 1
    #expect(KthSmallestElementInASortedMatrix().kthSmallest(input.0, input.1) == output)
  }
}

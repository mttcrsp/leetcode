@testable
import Leetcode
import Testing

@Suite
struct SparseVectorTests {
  @Test func testSparseVector1() {
    let vector1 = SparseVector([1, 0, 0, 2, 3])
    let vector2 = SparseVector([0, 3, 0, 4, 0])
    #expect(vector1.dotProduct(vector2) == 8)
  }

  @Test func testSparseVector2() {
    let vector1 = SparseVector([0, 1, 0, 0, 0])
    let vector2 = SparseVector([0, 0, 0, 0, 2])
    #expect(vector1.dotProduct(vector2) == 0)
  }

  @Test func testSparseVector3() {
    let vector1 = SparseVector([0, 1, 0, 0, 2, 0, 0])
    let vector2 = SparseVector([1, 0, 0, 0, 3, 0, 4])
    #expect(vector1.dotProduct(vector2) == 6)
  }

  @Test func testSparseVector4() {
    let vector1 = SparseVector([0, 0, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 0])
    let vector2 = SparseVector([0, 0, 2, 0, 0, 4, 3, 0, 0, 2, 0, 0, 0])
    #expect(vector1.dotProduct(vector2) == 15)
  }
}

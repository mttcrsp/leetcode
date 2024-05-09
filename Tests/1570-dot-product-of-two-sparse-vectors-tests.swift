@testable
import Leetcode
import XCTest

final class SparseVectorTests: XCTestCase {
  func testSparseVector1() {
    let vector1 = SparseVector([1, 0, 0, 2, 3])
    let vector2 = SparseVector([0, 3, 0, 4, 0])
    XCTAssertEqual(vector1.dotProduct(vector2), 8)
  }

  func testSparseVector2() {
    let vector1 = SparseVector([0, 1, 0, 0, 0])
    let vector2 = SparseVector([0, 0, 0, 0, 2])
    XCTAssertEqual(vector1.dotProduct(vector2), 0)
  }

  func testSparseVector3() {
    let vector1 = SparseVector([0, 1, 0, 0, 2, 0, 0])
    let vector2 = SparseVector([1, 0, 0, 0, 3, 0, 4])
    XCTAssertEqual(vector1.dotProduct(vector2), 6)
  }

  func testSparseVector4() {
    let vector1 = SparseVector([0, 0, 0, 0, 0, 0, 3, 0, 0, 3, 0, 0, 0])
    let vector2 = SparseVector([0, 0, 2, 0, 0, 4, 3, 0, 0, 2, 0, 0, 0])
    XCTAssertEqual(vector1.dotProduct(vector2), 15)
  }
}

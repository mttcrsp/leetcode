@testable
import Leetcode
import XCTest

final class EvenOddTreeTests: XCTestCase {
  func testIsEvenOddTree1() {
    let input = TreeNode([1, 10, 4, 3, nil, 7, 9, 12, 8, 6, nil, nil, 2])
    let output = true
    XCTAssertEqual(EvenOddTree().isEvenOddTree(input), output)
  }

  func testIsEvenOddTree2() {
    let input = TreeNode([5, 4, 2, 3, 3, 7])
    let output = false
    XCTAssertEqual(EvenOddTree().isEvenOddTree(input), output)
  }

  func testIsEvenOddTree3() {
    let input = TreeNode([5, 9, 1, 3, 5, 7])
    let output = false
    XCTAssertEqual(EvenOddTree().isEvenOddTree(input), output)
  }

  func testIsEvenOddTree4() {
    let input = TreeNode([1, 10, 4, 3, nil, 7, 9, 12, 8, 8, nil, nil, 2])
    let output = false
    XCTAssertEqual(EvenOddTree().isEvenOddTree(input), output)
  }
}

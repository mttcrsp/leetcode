@testable
import Leetcode
import XCTest

final class NextPermutationTests: XCTestCase {
  func testNextPermutation1() {
    var input = [1, 2, 3]
    NextPermutation().nextPermutation(&input)
    XCTAssertEqual(input, [1, 3, 2])
  }

  func testNextPermutation2() {
    var input = [3, 2, 1]
    NextPermutation().nextPermutation(&input)
    XCTAssertEqual(input, [1, 2, 3])
  }

  func testNextPermutation3() {
    var input = [1, 1, 5]
    NextPermutation().nextPermutation(&input)
    XCTAssertEqual(input, [1, 5, 1])
  }

  func testNextPermutation4() {
    var input = [1, 5, 1]
    NextPermutation().nextPermutation(&input)
    XCTAssertEqual(input, [5, 1, 1])
  }
}

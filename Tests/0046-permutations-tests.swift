@testable
import Leetcode
import XCTest

final class PermutationsTests: XCTestCase {
  func testPermute1() {
    let input = [1, 2, 3]
    let output = [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
    XCTAssertEqual(Set(Permutations().permute(input)), Set(output))
  }

  func testPermute2() {
    let input = [0, 1]
    let output = [[0, 1], [1, 0]]
    XCTAssertEqual(Set(Permutations().permute(input)), Set(output))
  }

  func testPermute3() {
    let input = [1]
    let output = [[1]]
    XCTAssertEqual(Set(Permutations().permute(input)), Set(output))
  }
}

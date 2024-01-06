@testable
import Leetcode
import XCTest

final class EvaluateDivisionTests: XCTestCase {
  func testTestCalcequation1() {
    let input = (
      [["a", "b"], ["b", "c"]],
      [2.0, 3.0],
      [["a", "c"], ["b", "a"], ["a", "e"], ["a", "a"], ["x", "x"]]
    )
    let output = [6.00000, 0.50000, -1.00000, 1.00000, -1.00000]
    let actual = EvaluateDivision().calcEquation(input.0, input.1, input.2)
    for (lhs, rhs) in zip(actual, output) {
      XCTAssertEqual(lhs, rhs, accuracy: 4)
    }
  }

  func testTestCalcequation2() {
    let input = (
      [["a", "b"], ["b", "c"], ["bc", "cd"]],
      [1.5, 2.5, 5.0],
      [["a", "c"], ["c", "b"], ["bc", "cd"], ["cd", "bc"]]
    )
    let output = [3.75000, 0.40000, 5.00000, 0.20000]
    let actual = EvaluateDivision().calcEquation(input.0, input.1, input.2)
    for (lhs, rhs) in zip(actual, output) {
      XCTAssertEqual(lhs, rhs, accuracy: 4)
    }
  }

  func testTestCalcequation3() {
    let input = (
      [["a", "b"]],
      [0.5],
      [["a", "b"], ["b", "a"], ["a", "c"], ["x", "y"]]
    )
    let output = [0.50000, 2.00000, -1.00000, -1.00000]
    let actual = EvaluateDivision().calcEquation(input.0, input.1, input.2)
    for (lhs, rhs) in zip(actual, output) {
      XCTAssertEqual(lhs, rhs, accuracy: 4)
    }
  }

  func testTestCalcequation4() {
    let input = (
      [["a", "b"], ["c", "b"], ["d", "b"], ["w", "x"], ["y", "x"], ["z", "x"], ["w", "d"]],
      [2.0, 3.0, 4.0, 5.0, 6.0, 7.0, 8.0],
      [["a", "c"], ["b", "c"], ["a", "e"], ["a", "a"], ["x", "x"], ["a", "z"]]
    )
    let output = [0.66667, 0.33333, -1.00000, 1.00000, 1.00000, 0.04464]
    let actual = EvaluateDivision().calcEquation(input.0, input.1, input.2)
    for (lhs, rhs) in zip(actual, output) {
      XCTAssertEqual(lhs, rhs, accuracy: 0.0001)
    }
  }
}

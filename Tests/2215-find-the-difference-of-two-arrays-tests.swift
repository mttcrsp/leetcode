@testable
import Leetcode
import XCTest

final class FindTheDifferenceOfTwoArraysTests: XCTestCase {
  func testFinddifference1() {
    let input = ([1, 2, 3], [2, 4, 6])
    let output: [Set<Int>] = [[1, 3], [4, 6]]
    XCTAssertEqual(FindTheDifferenceOfTwoArrays().findDifference(input.0, input.1).map(Set.init), output)
  }

  func testFinddifference2() {
    let input = ([1, 2, 3, 3], [1, 1, 2, 2])
    let output: [Set<Int>] = [[3], []]
    XCTAssertEqual(FindTheDifferenceOfTwoArrays().findDifference(input.0, input.1).map(Set.init), output)
  }
}

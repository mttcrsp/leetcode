@testable
import Leetcode
import XCTest

final class IntersectionOfTwoArraysIiTests: XCTestCase {
  func testIntersect1() {
    let input = ([1, 2, 2, 1], [2, 2])
    let expect = [2, 2]
    let actual = IntersectionOfTwoArraysIi().intersect(input.0, input.1)
    XCTAssertEqual(Set(actual), Set(expect))
  }

  func testIntersect2() {
    let input = ([4, 9, 5], [9, 4, 9, 8, 4])
    let expect = [4, 9]
    let actual = IntersectionOfTwoArraysIi().intersect(input.0, input.1)
    XCTAssertEqual(Set(actual), Set(expect))
  }
}

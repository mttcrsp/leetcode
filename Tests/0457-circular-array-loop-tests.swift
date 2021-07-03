@testable
import Leetcode
import XCTest

final class CircularArrayLoopTests: XCTestCase {
  func testCircularArrayLoop1() {
    let input = [2, -1, 1, 2, 2]
    let output = true
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop2() {
    let input = [-1, 2]
    let output = false
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop3() {
    let input = [-2, 1, -1, -2, -2]
    let output = false
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop4() {
    let input = [10, -1, 1, 4, -12]
    let output = true
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop5() {
    let input = [10, -4, -1, 2, 7]
    let output = true
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop6() {
    let input = [1, 2, 3, 4, 5]
    let output = true
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop7() {
    let input = [3, 1, -1, 3, -3, 1]
    let output = true
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop8() {
    let input = [5, -5, 3, -2, 5, -3]
    let output = false
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }

  func testCircularArrayLoop9() {
    let input = [-1, -2, -3, -4, -5]
    let output = false
    XCTAssertEqual(CircularArrayLoop().circularArrayLoop(input), output)
  }
}

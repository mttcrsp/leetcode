@testable
import Leetcode
import XCTest

final class BoatsToSavePeopleTests: XCTestCase {
  func testNumRescueBoats1() {
    let input = ([1, 2], 3)
    let output = 1
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }

  func testNumRescueBoats2() {
    let input = ([3, 2, 2, 1], 3)
    let output = 3
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }

  func testNumRescueBoats3() {
    let input = ([3, 5, 3, 4], 5)
    let output = 4
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }

  func testNumRescueBoats4() {
    let input = ([] as [Int], 5)
    let output = 0
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }

  func testNumRescueBoats5() {
    let input = ([5, 5, 5, 5, 5], 5)
    let output = 5
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }

  func testNumRescueBoats6() {
    let input = ([2, 2, 2, 1], 4)
    let output = 2
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }

  func testNumRescueBoats7() {
    let input = ([8, 2, 3, 6, 2, 6], 8)
    let output = 4
    XCTAssertEqual(BoatsToSavePeople().numRescueBoats(input.0, input.1), output)
  }
}

@testable
import Leetcode
import XCTest

final class RabbitsInForestTests: XCTestCase {
  func testNumRabbits1() {
    let input = [1, 1, 2]
    let output = 5
    XCTAssertEqual(RabbitsInForest().numRabbits(input), output)
  }

  func testNumRabbits2() {
    let input = [10, 10, 10]
    let output = 11
    XCTAssertEqual(RabbitsInForest().numRabbits(input), output)
  }

  func testNumRabbits3() {
    let input = [1, 1, 1, 2]
    let output = 7
    XCTAssertEqual(RabbitsInForest().numRabbits(input), output)
  }

  func testNumRabbits4() {
    let input = [0, 0]
    let output = 2
    XCTAssertEqual(RabbitsInForest().numRabbits(input), output)
  }
}

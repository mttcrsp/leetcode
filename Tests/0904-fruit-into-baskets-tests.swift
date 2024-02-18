@testable
import Leetcode
import XCTest

final class FruitIntoBasketsTests: XCTestCase {
  func testTotalFruit1() {
    let input = [1, 2, 1]
    let output = 3
    XCTAssertEqual(FruitIntoBaskets().totalFruit(input), output)
  }

  func testTotalFruit2() {
    let input = [0, 1, 2, 2]
    let output = 3
    XCTAssertEqual(FruitIntoBaskets().totalFruit(input), output)
  }

  func testTotalFruit3() {
    let input = [1, 2, 3, 2, 2]
    let output = 4
    XCTAssertEqual(FruitIntoBaskets().totalFruit(input), output)
  }

  func testTotalFruit4() {
    let input = [1, 2, 3, 2, 2, 4, 2, 4, 4, 1, 2, 3]
    let output = 6
    XCTAssertEqual(FruitIntoBaskets().totalFruit(input), output)
  }
}

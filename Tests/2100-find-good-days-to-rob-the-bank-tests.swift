@testable
import Leetcode
import XCTest

final class FindGoodDaysToRobTheBankTests: XCTestCase {
  func testGoodDaysToRobBank1() {
    let input = ([5, 3, 3, 3, 5, 6, 2], 2)
    let output = [2, 3]
    XCTAssertEqual(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1), output)
  }

  func testGoodDaysToRobBank2() {
    let input = ([1, 1, 1, 1, 1], 0)
    let output = [0, 1, 2, 3, 4]
    XCTAssertEqual(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1), output)
  }

  func testGoodDaysToRobBank3() {
    let input = ([1, 2, 3, 4, 5, 6], 2)
    let output: [Int] = []
    XCTAssertEqual(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1), output)
  }

  func testGoodDaysToRobBank4() {
    let input = ([1], 5)
    let output: [Int] = []
    XCTAssertEqual(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1), output)
  }

  func testGoodDaysToRobBank5() {
    let input = ([0, 0, 0, 0, 0], 3)
    let output: [Int] = []
    XCTAssertEqual(FindGoodDaysToRobTheBank().goodDaysToRobBank(input.0, input.1), output)
  }
}

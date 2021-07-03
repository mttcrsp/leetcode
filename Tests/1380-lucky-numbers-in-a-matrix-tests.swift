@testable
import Leetcode
import XCTest

final class LuckyNumbersInAMatrixTests: XCTestCase {
  func testLuckyNumbers1() {
    let input = [[3, 7, 8], [9, 11, 13], [15, 16, 17]]
    let output = [15]
    XCTAssertEqual(LuckyNumbersInAMatrix().luckyNumbers(input), output)
  }

  func testLuckyNumbers2() {
    let input = [[1, 10, 4, 2], [9, 3, 8, 7], [15, 16, 17, 12]]
    let output = [12]
    XCTAssertEqual(LuckyNumbersInAMatrix().luckyNumbers(input), output)
  }

  func testLuckyNumbers3() {
    let input = [[7, 8], [1, 2]]
    let output = [7]
    XCTAssertEqual(LuckyNumbersInAMatrix().luckyNumbers(input), output)
  }

  func testLuckyNumbers4() {
    let input = [[56216], [63251], [75772], [1945], [27014]]
    let output = [75772]
    XCTAssertEqual(LuckyNumbersInAMatrix().luckyNumbers(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class DefuseTheBombTests: XCTestCase {
  func testDecrypt1() {
    let input = ([5, 7, 1, 4], 3)
    let output = [12, 10, 16, 13]
    XCTAssertEqual(DefuseTheBomb().decrypt(input.0, input.1), output)
  }

  func testDecrypt2() {
    let input = ([1, 2, 3, 4], 0)
    let output = [0, 0, 0, 0]
    XCTAssertEqual(DefuseTheBomb().decrypt(input.0, input.1), output)
  }

  func testDecrypt3() {
    let input = ([2, 4, 9, 3], -2)
    let output = [12, 5, 6, 13]
    XCTAssertEqual(DefuseTheBomb().decrypt(input.0, input.1), output)
  }
  
  func testDecrypt4() {
    let input = ([5, 7, 1, 4], 2)
    let output = [8, 5, 9, 12]
    XCTAssertEqual(DefuseTheBomb().decrypt(input.0, input.1), output)
  }
}

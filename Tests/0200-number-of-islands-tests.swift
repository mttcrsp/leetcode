@testable
import Leetcode
import XCTest

final class NumberOfIslandsTests: XCTestCase {
  func testNumislands1() {
    let input = [["1", "1", "1", "1", "0"], ["1", "1", "0", "1", "0"], ["1", "1", "0", "0", "0"], ["0", "0", "0", "0", "0"]] as [[Character]]
    let output = 1
    XCTAssertEqual(NumberOfIslands().numIslands(input), output)
  }

  func testNumislands2() {
    let input = [["1", "1", "0", "0", "0"], ["1", "1", "0", "0", "0"], ["0", "0", "1", "0", "0"], ["0", "0", "0", "1", "1"]] as [[Character]]
    let output = 3
    XCTAssertEqual(NumberOfIslands().numIslands(input), output)
  }
}

@testable
import Leetcode
import XCTest

final class ConvertAnArrayIntoA2DArrayWithConditionsTests: XCTestCase {
  func testTestFindmatrix1() {
    let input = [1, 3, 4, 1, 2, 3, 1]
    let output = [[1, 3, 4, 2], [1, 3], [1]]
    XCTAssertEqual(
      ConvertAnArrayIntoA2DArrayWithConditions().findMatrix(input).map { Set($0) },
      output.map { Set($0) }
    )
  }

  func testTestFindmatrix2() {
    let input = [1, 2, 3, 4]
    let output = [[4, 3, 2, 1]]
    XCTAssertEqual(
      ConvertAnArrayIntoA2DArrayWithConditions().findMatrix(input).map { Set($0) },
      output.map { Set($0) }
    )
  }
}

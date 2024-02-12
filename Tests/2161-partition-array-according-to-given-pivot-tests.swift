@testable
import Leetcode
import XCTest

final class PartitionArrayAccordingToGivenPivotTests: XCTestCase {
  func testPivotarray1() {
    let input = ([9, 12, 5, 10, 14, 3, 10], 10)
    let output = [9, 5, 3, 10, 10, 12, 14]
    XCTAssertEqual(PartitionArrayAccordingToGivenPivot().pivotArray(input.0, input.1), output)
  }

  func testPivotarray3() {
    let input = ([-3, 4, 3, 2], 2)
    let output = [-3, 2, 4, 3]
    XCTAssertEqual(PartitionArrayAccordingToGivenPivot().pivotArray(input.0, input.1), output)
  }
}

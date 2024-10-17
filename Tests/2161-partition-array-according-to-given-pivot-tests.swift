@testable
import Leetcode
import Testing

@Suite
struct PartitionArrayAccordingToGivenPivotTests {
  @Test func testPivotarray1() {
    let input = ([9, 12, 5, 10, 14, 3, 10], 10)
    let output = [9, 5, 3, 10, 10, 12, 14]
    #expect(PartitionArrayAccordingToGivenPivot().pivotArray(input.0, input.1) == output)
  }

  @Test func testPivotarray3() {
    let input = ([-3, 4, 3, 2], 2)
    let output = [-3, 2, 4, 3]
    #expect(PartitionArrayAccordingToGivenPivot().pivotArray(input.0, input.1) == output)
  }
}

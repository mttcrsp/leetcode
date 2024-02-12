@testable
import Leetcode
import XCTest

final class NonOverlappingIntervalsTests: XCTestCase {
  func testEraseoverlapintervals1() {
    let input = [[1, 2], [2, 3], [3, 4], [1, 3]]
    let output = 1
    XCTAssertEqual(NonOverlappingIntervals().eraseOverlapIntervals(input), output)
  }

  func testEraseoverlapintervals2() {
    let input = [[1, 2], [1, 2], [1, 2]]
    let output = 2
    XCTAssertEqual(NonOverlappingIntervals().eraseOverlapIntervals(input), output)
  }

  func testEraseoverlapintervals3() {
    let input = [[1, 2], [2, 3]]
    let output = 0
    XCTAssertEqual(NonOverlappingIntervals().eraseOverlapIntervals(input), output)
  }

  func testEraseoverlapintervals4() {
    let input = [[-52, 31], [-73, -26], [82, 97], [-65, -11], [-62, -49], [95, 99], [58, 95], [-31, 49], [66, 98], [-63, 2], [30, 47], [-40, -26]]
    let output = 7
    XCTAssertEqual(NonOverlappingIntervals().eraseOverlapIntervals(input), output)
  }

  func testEraseoverlapintervals5() {
    let input = [[1, 67], [2, 3], [3, 4]]
    let output = 1
    XCTAssertEqual(NonOverlappingIntervals().eraseOverlapIntervals(input), output)
  }
}

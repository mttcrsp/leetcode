@testable
import Leetcode
import XCTest

final class SortArrayByIncreasingFrequencyTests: XCTestCase {
  func testTestFrequencysort1() {
    let input = [1, 1, 2, 2, 2, 3]
    let output = [3, 1, 1, 2, 2, 2]
    XCTAssertEqual(SortArrayByIncreasingFrequency().frequencySort(input), output)
  }

  func testTestFrequencysort2() {
    let input = [2, 3, 1, 3, 2]
    let output = [1, 3, 3, 2, 2]
    XCTAssertEqual(SortArrayByIncreasingFrequency().frequencySort(input), output)
  }

  func testTestFrequencysort3() {
    let input = [-1, 1, -6, 4, 5, -6, 1, 4, 1]
    let output = [5, -1, 4, 4, -6, -6, 1, 1, 1]
    XCTAssertEqual(SortArrayByIncreasingFrequency().frequencySort(input), output)
  }
}

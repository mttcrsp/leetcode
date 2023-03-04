@testable
import Leetcode
import XCTest

final class MinimumNumberOfMovesToSeatEveryoneTests: XCTestCase {
  func testTestMinmovestoseat1() {
    let input = ([3,1,5], [2,7,4])
    let output = 4
    XCTAssertEqual(MinimumNumberOfMovesToSeatEveryone().minMovesToSeat(input.0, input.1), output)
  }

  func testTestMinmovestoseat2() {
    let input = ([4,1,5,9], [1,3,2,6])
    let output = 7
    XCTAssertEqual(MinimumNumberOfMovesToSeatEveryone().minMovesToSeat(input.0, input.1), output)
  }

  func testTestMinmovestoseat3() {
    let input = ([2,2,6,6], [1,3,2,6])
    let output = 4
    XCTAssertEqual(MinimumNumberOfMovesToSeatEveryone().minMovesToSeat(input.0, input.1), output)
  }
}

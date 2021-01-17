@testable
import Leetcode
import XCTest

final class CorporateFlightBookingsTests: XCTestCase {
  func testCorpFlightBookings1() {
    let input = ([[1, 2, 10], [2, 3, 20], [2, 5, 25]], 5)
    let output = [10, 55, 45, 25, 25]
    XCTAssertEqual(CorporateFlightBookings().corpFlightBookings(input.0, input.1), output)
  }

  func testCorpFlightBookings2() {
    let input = ([[2, 8, 6], [3, 10, 1], [2, 6, 6], [1, 2, 3], [3, 8, 8], [5, 9, 6]], 10)
    let output = [3, 15, 21, 21, 27, 27, 21, 21, 7, 1]
    XCTAssertEqual(CorporateFlightBookings().corpFlightBookings(input.0, input.1), output)
  }
}

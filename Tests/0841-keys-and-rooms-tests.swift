@testable
import Leetcode
import XCTest

final class KeysAndRoomsTests: XCTestCase {
  func testCanvisitallrooms1() {
    let input = [[1], [2], [3], []]
    let output = true
    XCTAssertEqual(KeysAndRooms().canVisitAllRooms(input), output)
  }

  func testCanvisitallrooms2() {
    let input = [[1, 3], [3, 0, 1], [2], [0]]
    let output = false
    XCTAssertEqual(KeysAndRooms().canVisitAllRooms(input), output)
  }
}

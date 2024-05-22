@testable
import Leetcode
import XCTest

final class MeetingRoomsIiTests: XCTestCase {
  func testMinMeetingRooms1() {
    let input = [[0, 30], [5, 10], [15, 20]]
    let output = 2
    XCTAssertEqual(MeetingRoomsIi().minMeetingRooms(input), output)
  }

  func testMinMeetingRooms2() {
    let input = [[7, 10], [2, 4]]
    let output = 1
    XCTAssertEqual(MeetingRoomsIi().minMeetingRooms(input), output)
  }

  func testMinMeetingRooms3() {
    let input = [[1, 2], [2, 3], [3, 4]]
    let output = 1
    XCTAssertEqual(MeetingRoomsIi().minMeetingRooms(input), output)
  }

  func testMinMeetingRooms4() {
    let input = [[1, 3], [1, 30], [2, 6], [2, 6], [2, 99], [4, 9]]
    let output = 5
    XCTAssertEqual(MeetingRoomsIi().minMeetingRooms(input), output)
  }
}

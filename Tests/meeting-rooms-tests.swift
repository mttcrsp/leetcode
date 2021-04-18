@testable
import Leetcode
import XCTest

final class MeetingRoomsTests: XCTestCase {
  func testCanAttendMeetings1() {
    let input = [[0, 30], [5, 10], [15, 20]]
    let output = false
    XCTAssertEqual(MeetingRooms().canAttendMeetings(input), output)
  }

  func testCanAttendMeetings2() {
    let input = [[7, 10], [2, 4]]
    let output = true
    XCTAssertEqual(MeetingRooms().canAttendMeetings(input), output)
  }

  func testCanAttendMeetings3() {
    let input = [[0, 1], [1, 2]]
    let output = true
    XCTAssertEqual(MeetingRooms().canAttendMeetings(input), output)
  }
}

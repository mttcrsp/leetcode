@testable
import Leetcode
import Testing

@Suite
struct MeetingRoomsTests {
  @Test func testCanAttendMeetings1() {
    let input = [[0, 30], [5, 10], [15, 20]]
    let output = false
    #expect(MeetingRooms().canAttendMeetings(input) == output)
  }

  @Test func testCanAttendMeetings2() {
    let input = [[7, 10], [2, 4]]
    let output = true
    #expect(MeetingRooms().canAttendMeetings(input) == output)
  }

  @Test func testCanAttendMeetings3() {
    let input = [[0, 1], [1, 2]]
    let output = true
    #expect(MeetingRooms().canAttendMeetings(input) == output)
  }
}

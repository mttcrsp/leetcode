@testable
import Leetcode
import Testing

@Suite
struct StudentAttendanceRecordITests {
  @Test func testCheckRecord1() {
    let input = "PPALLP"
    let output = true
    #expect(StudentAttendanceRecordI().checkRecord(input) == output)
  }

  @Test func testCheckRecord2() {
    let input = "PPALLL"
    let output = false
    #expect(StudentAttendanceRecordI().checkRecord(input) == output)
  }

  @Test func testCheckRecord3() {
    let input = "APPPPPA"
    let output = false
    #expect(StudentAttendanceRecordI().checkRecord(input) == output)
  }

  @Test func testCheckRecord4() {
    let input = "PPPPPAA"
    let output = false
    #expect(StudentAttendanceRecordI().checkRecord(input) == output)
  }

  @Test func testCheckRecord5() {
    let input = "AA"
    let output = false
    #expect(StudentAttendanceRecordI().checkRecord(input) == output)
  }

  @Test func testCheckRecord6() {
    let input = "LLL"
    let output = false
    #expect(StudentAttendanceRecordI().checkRecord(input) == output)
  }
}

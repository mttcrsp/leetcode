@testable
import Leetcode
import XCTest

final class StudentAttendanceRecordITests: XCTestCase {
  func testCheckRecord1() {
    let input = "PPALLP"
    let output = true
    XCTAssertEqual(StudentAttendanceRecordI().checkRecord(input), output)
  }

  func testCheckRecord2() {
    let input = "PPALLL"
    let output = false
    XCTAssertEqual(StudentAttendanceRecordI().checkRecord(input), output)
  }

  func testCheckRecord3() {
    let input = "APPPPPA"
    let output = false
    XCTAssertEqual(StudentAttendanceRecordI().checkRecord(input), output)
  }

  func testCheckRecord4() {
    let input = "PPPPPAA"
    let output = false
    XCTAssertEqual(StudentAttendanceRecordI().checkRecord(input), output)
  }

  func testCheckRecord5() {
    let input = "AA"
    let output = false
    XCTAssertEqual(StudentAttendanceRecordI().checkRecord(input), output)
  }

  func testCheckRecord6() {
    let input = "LLL"
    let output = false
    XCTAssertEqual(StudentAttendanceRecordI().checkRecord(input), output)
  }
}

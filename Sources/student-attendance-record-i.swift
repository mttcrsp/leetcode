struct StudentAttendanceRecordI {
  func checkRecord(_ attendance: String) -> Bool {
    let attendance = Array(attendance)
    var wasAbsenceRecorded = false

    for day in attendance.indices {
      let record = attendance[day]

      switch record {
      case "A" where wasAbsenceRecorded:
        return false
      case "A" where !wasAbsenceRecorded:
        wasAbsenceRecorded = true
      case "L":
        let previousDay1 = day - 1
        let previousDay2 = day - 2
        guard attendance.indices.contains(previousDay2) else { continue }
        let previousRecord1 = attendance[previousDay1]
        let previousRecord2 = attendance[previousDay2]
        guard previousRecord1 == "L", previousRecord2 == "L" else { continue }
        return false
      case "P":
        break
      default:
        preconditionFailure("Unexpected character found '\(record)'")
      }
    }

    return true
  }
}

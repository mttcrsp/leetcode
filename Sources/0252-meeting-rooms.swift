/// https://leetcode.com/problems/meeting-rooms/
struct MeetingRooms {
  func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
    let sortedIntervals = intervals.sorted { lhs, rhs in lhs[0] < rhs[0] }

    for i in sortedIntervals.indices.dropLast() {
      let lhsInterval = sortedIntervals[i]
      let rhsInterval = sortedIntervals[i+1]
      if lhsInterval[1] > rhsInterval[0] {
        return false
      }
    }

    return true
  }
}

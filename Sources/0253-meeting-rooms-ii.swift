import Collections

/// https://leetcode.com/problems/meeting-rooms-ii/
struct MeetingRoomsIi {
  func minMeetingRooms(_ intervals: [[Int]]) -> Int {
    let startTimes = intervals.sorted { $0[0] < $1[0] }
    let endTimes = intervals.sorted { $0[1] < $1[1] }
    var endIndex = 0
    var count = 0
    var result = 0
    for startIndex in startTimes.indices {
      while endTimes[endIndex][1] <= startTimes[startIndex][0] {
        endIndex += 1
        count -= 1
      }

      count += 1
      result = max(result, count)
    }

    return result
  }
}

/// https://leetcode.com/problems/minimum-time-difference/
struct MinimumTimeDifference {
  func findMinDifference(_ timePoints: [String]) -> Int {
    var minutes: [Int] = timePoints.compactMap { string in
      let components = string.components(separatedBy: ":")
      guard
        components.count == 2,
        let hh = Int(components[0]),
        let mm = Int(components[1])
      else { return nil }
      return hh*60+mm
    }

    minutes.sort()

    guard let first = minutes.first, let last = minutes.last
    else { return -1 }

    var minDifference = (60*24)+first-last
    for i in minutes.indices.dropFirst() {
      minDifference = min(minDifference, minutes[i]-minutes[i-1])
    }

    return minDifference
  }
}

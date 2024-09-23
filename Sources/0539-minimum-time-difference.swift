import Foundation

/// https://leetcode.com/problems/minimum-time-difference/
@available(macOS 10.15, *)
struct MinimumTimeDifference {
  func findMinDifference(_ timePoints: [String]) -> Int {
    var minutes = [Bool](repeating: false, count: 24*60)
    for string in timePoints {
      let scanner = Scanner(string: string)
      guard 
        let hh = scanner.scanInt(),
        let _ = scanner.scanString(":"),
        let mm = scanner.scanInt()
      else { continue }

      let absoluteMinutesValue = hh*60+mm
      guard !minutes[absoluteMinutesValue] else { return 0 }
      minutes[absoluteMinutesValue] = true
    }

    var firstIndex: Int?
    var lastIndex: Int?
    var minDifference = Int.max
    for i in minutes.indices where minutes[i] {
      firstIndex = firstIndex ?? i

      if let lastIndex {
        minDifference = min(minDifference, i-lastIndex)
      }
      lastIndex = i
    }

    if let firstIndex, let lastIndex {
      return min(minDifference, minutes.count-lastIndex+firstIndex)
    } else {
      return minDifference
    }
  }
}

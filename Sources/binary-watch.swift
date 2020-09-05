extension Solution {
  func readBinaryWatch(_ num: Int) -> [String] {
    var result: [String] = []

    for hour in 0 ..< 12 {
      for minute in 0 ..< 60 {
        if ((hour * 64) + minute).nonzeroBitCount == num {
          let mm = minute < 10 ? "0\(minute)" : "\(minute)"
          result.append("\(hour):\(mm)")
        }
      }
    }

    return result
  }
}

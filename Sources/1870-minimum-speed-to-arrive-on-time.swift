/// https://leetcode.com/problems/minimum-speed-to-arrive-on-time/
struct MinimumSpeedToArriveOnTime {
  func minSpeedOnTime(_ dist: [Int], _ hour: Double) -> Int {
    var lowerBound = 1
    var upperBound = 10_000_000
    var minSpeed = -1
    while lowerBound <= upperBound {
      let speed = (lowerBound+upperBound)/2

      var time = Double(dist[dist.count-1])/Double(speed)
      for distance in dist.dropLast() {
        time += (Double(distance)/Double(speed)).rounded(.up)
      }

      if time > hour {
        lowerBound = speed+1
      } else {
        upperBound = speed-1
        minSpeed = speed
      }
    }

    return minSpeed
  }
}

// let input = ([1, 1, 100_000], 2.01)
// let output = 10_000_000
// print(MinimumSpeedToArriveOnTime().minSpeedOnTime(input.0, input.1), output)

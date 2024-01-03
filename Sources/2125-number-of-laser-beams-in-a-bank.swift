/// https://leetcode.com/problems/number-of-laser-beams-in-a-bank/
struct NumberOfLaserBeamsInABank {
  func numberOfBeams(_ bank: [String]) -> Int {
    var counts: [Int] = []
    for line in bank {
      var count = 0
      for character in line {
        if character == "1" {
          count += 1
        }
      }

      if count > 0 {
        counts.append(count)
      }
    }

    var result = 0
    for i in counts.indices.dropLast() {
      result += counts[i]*counts[i+1]
    }
    return result
  }
}

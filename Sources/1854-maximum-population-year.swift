/// https://leetcode.com/problems/maximum-population-counts/
struct MaximumPopulationYear {
  func maximumPopulation(_ logs: [[Int]]) -> Int {
    let minYear = 1950
    let maxYear = 2050

    var counts = [Int](repeating: 0, count: maxYear-minYear+1)
    for log in logs {
      counts[log[0]-minYear] += 1
      counts[log[1]-minYear] -= 1
    }

    var maxCount = counts[0]
    var maxIndex = 0
    for index in counts.indices.dropFirst() {
      counts[index] += counts[index-1]
      if counts[index] > maxCount {
        maxCount = counts[index]
        maxIndex = index
      }
    }

    return minYear+maxIndex
  }
}

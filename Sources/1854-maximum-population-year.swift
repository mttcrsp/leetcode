/// https://leetcode.com/problems/maximum-population-year/
struct MaximumPopulationYear {
  func maximumPopulation(_ logs: [[Int]]) -> Int {
    let minYear = 1950
    let maxYear = 2050

    var population = [Int](repeating: 0, count: maxYear-minYear)
    for log in logs {
      for i in log[0]-minYear ..< log[1]-minYear {
        population[i] += 1
      }
    }

    return population.enumerated()
      .max { $0.element < $1.element }!
      .offset+minYear
  }
}

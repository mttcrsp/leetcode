/// https://leetcode.com/problems/fruit-into-baskets/
struct FruitIntoBaskets {
  func totalFruit(_ fruits: [Int]) -> Int {
    var result = 0
    var counts: [Int: Int] = [:]
    var lowerBound = 0
    for upperBound in fruits.indices {
      counts[fruits[upperBound], default: 0] += 1

      while counts.count > 2 {
        let previousCount = counts[fruits[lowerBound], default: 0]
        if previousCount == 1 {
          counts[fruits[lowerBound]] = nil
        } else {
          counts[fruits[lowerBound]] = previousCount-1
        }

        lowerBound += 1
      }

      result = max(result, upperBound-lowerBound+1)
    }

    return result
  }
}

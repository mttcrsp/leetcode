struct DistributeCandiesToPeople {
  func distributeCandies(_ candies: Int, _ people: Int) -> [Int] {
    if people == 1 { return [candies] }

    var distribution = [Int](repeating: 0, count: people) // 0 0 0 0
    var remainingCandies = candies // 7
    var currentCandiesCount = 1
    var personIndex = 0

    while remainingCandies - currentCandiesCount > 0 { // 6 > 0
      remainingCandies -= currentCandiesCount // 7 - 1
      distribution[personIndex] += currentCandiesCount

      currentCandiesCount += 1
      personIndex = (personIndex + 1) % people
    }

    distribution[personIndex] += remainingCandies

    return distribution
  }
}

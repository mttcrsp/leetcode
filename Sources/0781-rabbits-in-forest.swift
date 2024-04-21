/// https://leetcode.com/problems/rabbits-in-forest/
struct RabbitsInForest {
  func numRabbits(_ answers: [Int]) -> Int {
    var counts: [Int: Int] = [:]
    for answer in answers {
      counts[answer+1, default: 0] += 1
    }

    var total = 0
    for (groupSize, count) in counts {
      var groups = count/groupSize
      if count%groupSize > 0 {
        groups += 1
      }

      total += groups*groupSize
    }

    return total
  }
}

/// https://leetcode.com/problems/best-poker-hand/
struct BestPokerHand {
  func bestHand(_ ranks: [Int], _ suits: [Character]) -> String {
    guard !suits.allSatisfy({ $0 == suits.first })
    else { return "Flush" }

    var rankFrequencies: [Int: Int] = [:]
    for rank in ranks {
      rankFrequencies[rank, default: 0] += 1
    }

    let maxFrequency = rankFrequencies.values.max()!
    if maxFrequency >= 3 {
      return "Three of a Kind"
    } else if maxFrequency == 2 {
      return "Pair"
    } else {
      return "High Card"
    }
  }
}

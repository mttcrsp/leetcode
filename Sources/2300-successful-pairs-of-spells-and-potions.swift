/// https://leetcode.com/problems/successful-pairs-of-spells-and-potions/
struct SuccessfulPairsOfSpellsAndPotions {
  func successfulPairs(_ spells: [Int], _ potions: [Int], _ success: Int) -> [Int] {
    let sortedPotions = potions.sorted()

    var counts = [Int](repeating: 0, count: spells.count)
    for (spellIndex, spell) in spells.enumerated() {
      var lhs = 0
      var rhs = sortedPotions.count
      while lhs < rhs {
        let mid = (lhs+rhs)/2
        if sortedPotions[mid]*spell >= success {
          rhs = mid
        } else {
          lhs = mid+1
        }
      }
      counts[spellIndex] = sortedPotions.count-lhs
    }
    return counts
  }
}

/// https://leetcode.com/problems/dota2-senate/
struct Dota2Senate {
  func predictPartyVictory(_ senate: String) -> String {
    func opposition(_ party: Character) -> Character {
      switch party {
      case "D": "R"
      case "R": "D"
      default: preconditionFailure("Unxpected party \(party)")
      }
    }

    func name(_ party: Character) -> String {
      switch party {
      case "D": "Dire"
      case "R": "Radiant"
      default: preconditionFailure("Unxpected party \(party)")
      }
    }

    var bannedSenators: Set<Int> = []
    var pendingBans: [Character: Int] = [:]
    while true {
      var activeParties: Set<Character> = []
      for (senator, party) in senate.enumerated() {
        guard !bannedSenators.contains(senator) else { continue }

        if pendingBans[party, default: 0] > 0 {
          pendingBans[party, default: 0] -= 1
          bannedSenators.insert(senator)
        } else {
          activeParties.insert(party)
          pendingBans[opposition(party), default: 0] += 1
        }
      }

      if activeParties.count == 1, let party = activeParties.first {
        return name(party)
      }
    }
  }
}

extension Solution {
  func pushDominoes(_ initialStates: String) -> String {
    var states = [Character](initialStates)

    while true {
      var proposals: [Int: Character] = [:]

      for (i, state) in states.enumerated() {
        let prev = i - 1
        let next = i + 1

        if state == "R", next < states.count, states[next] == "." {
          proposals[next] = "R"
        } else if state == "L", prev >= 0, states[prev] == "." {
          if proposals[prev] != nil {
            proposals[prev] = nil
          } else {
            proposals[prev] = "L"
          }
        }
      }

      for (i, state) in proposals {
        states[i] = state
      }

      if proposals.isEmpty {
        break
      }
    }

    return String(states)
  }
}

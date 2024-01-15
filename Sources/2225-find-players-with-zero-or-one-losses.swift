/// https://leetcode.com/problems/find-players-with-zero-or-one-losses/
struct FindPlayersWithZeroOrOneLosses {
  func findWinners(_ matches: [[Int]]) -> [[Int]] {
    var losses: [Int: Int] = [:]
    for match in matches {
      losses[match[0], default: 0] += 0
      losses[match[1], default: 0] += 1
    }

    var inverseLosses: [Int: [Int]] = [:]
    for (player, count) in losses {
      inverseLosses[count, default: []].append(player)
    }

    return [
      inverseLosses[0, default: []].sorted(),
      inverseLosses[1, default: []].sorted(),
    ]
  }
}

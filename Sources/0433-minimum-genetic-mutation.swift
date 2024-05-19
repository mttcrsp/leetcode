import Collections

/// https://leetcode.com/problems/minimum-genetic-mutation/
struct MinimumGeneticMutation {
  func minMutation(_ startGene: String, _ endGene: String, _ bank: [String]) -> Int {
    func isMutation(_ lhs: String, _ rhs: String) -> Bool {
      var mismatchFound = false
      for (lhs, rhs) in zip(lhs, rhs) where lhs != rhs {
        if !mismatchFound {
          mismatchFound = true
        } else {
          return false
        }
      }
      return true
    }

    var bank = bank
    bank.append(startGene)

    var graph: [String: Set<String>] = [:]
    for i in 0 ..< bank.count-1 {
      for j in i+1 ..< bank.count {
        if isMutation(bank[i], bank[j]) {
          graph[bank[i], default: []].insert(bank[j])
          graph[bank[j], default: []].insert(bank[i])
        }
      }
    }

    var frontier: Deque = [(startGene, 0)]
    var visited: Set<String> = []
    while let (gene, distance) = frontier.popFirst() {
      guard !visited.contains(gene) else { continue }
      visited.insert(gene)

      guard gene != endGene else { return distance }
      for next in graph[gene, default: []] {
        frontier.append((next, distance+1))
      }
    }

    return -1
  }
}

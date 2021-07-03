struct LongestStringChain {
  func longestStrChain(_ words: [String]) -> Int {
    var dictionary: [Int: Set<Node>] = [:]
    for word in words {
      dictionary[word.count, default: []].insert(Node(word))
    }

    for nodes in dictionary.values {
      for node in nodes {
        for potentialPredecessorNode in dictionary[node.word.count - 1] ?? [] {
          if potentialPredecessorNode.word.isPredecessor(of: node.word) {
            node.addPredecessor(potentialPredecessorNode)
          }
        }
      }
    }

    var max = 0
    for nodes in dictionary.values {
      for node in nodes {
        let depth = node.depth
        if depth > max {
          max = depth
        }
      }
    }
    return max
  }
}

private final class Node: Hashable {
  let word: String

  private var predecessors: Set<Node> = []

  init(_ word: String) {
    self.word = word
  }

  var depth: Int {
    guard let depth = predecessors.map({ node in node.depth }).max() else { return 1 }
    return depth + 1
  }

  func addPredecessor(_ predecessor: Node) {
    predecessors.insert(predecessor)
  }

  static func == (_ lhs: Node, _ rhs: Node) -> Bool {
    lhs.word == rhs.word
  }

  func hash(into hasher: inout Hasher) {
    hasher.combine(word)
  }
}

private extension String {
  func isPredecessor(of other: String) -> Bool {
    guard count == other.count - 1 else { return false }

    var i = startIndex
    var j = other.startIndex
    var mismatched = false

    while i < endIndex, j < other.endIndex {
      switch (self[i] == other[j], mismatched) {
      case (false, true):
        return false
      case (false, false):
        mismatched = true
        j = other.index(after: j)
      case (true, _):
        i = index(after: i)
        j = other.index(after: j)
      }
    }

    return true
  }
}

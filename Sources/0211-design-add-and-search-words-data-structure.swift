class WordDictionary {
  private let root: Node = {
    let node = Node()
    node.isEndOfWord = true
    return node
  }()

  func addWord(_ word: String) {
    var node = root

    for character in word {
      let next: Node
      if let existing = node.neighbours[character] {
        next = existing
      } else {
        next = Node()
        node.neighbours[character] = next
      }
      node = next
    }

    node.isEndOfWord = true
  }

  func search(_ word: String) -> Bool {
    var nodes = [root]

    for character in word {
      var newNodes: [Node] = []

      for node in nodes {
        if character == "." {
          newNodes.append(contentsOf: node.neighbours.values)
        } else if let next = node.neighbours[character] {
          newNodes.append(next)
        }
      }

      nodes = newNodes
    }

    return nodes.contains { node in node.isEndOfWord }
  }

  private class Node {
    var neighbours: [Character: Node] = [:]
    var isEndOfWord = false
    init() {}
  }
}

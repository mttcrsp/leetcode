class Trie {
  private let root: Node = {
    let node = Node()
    node.isEndOfWord = true
    return node
  }()

  func insert(_ word: String) {
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
    var node = root
    for character in word {
      if let next = node.neighbours[character] {
        node = next
      } else {
        return false
      }
    }
    return node.isEndOfWord
  }

  func startsWith(_ prefix: String) -> Bool {
    var node = root
    for character in prefix {
      if let next = node.neighbours[character] {
        node = next
      } else {
        return false
      }
    }
    return true
  }

  private class Node {
    var neighbours: [Character: Node] = [:]
    var isEndOfWord = false
    init() {}
  }
}

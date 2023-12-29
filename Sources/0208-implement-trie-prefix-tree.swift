class Trie {
  private let root = Node()

  func insert(_ word: String) {
    var current = root
    for character in word {
      let i = character.alphabeticalValue
      let node = current.children[i] ?? Node()
      current.children[i] = node
      current = node
    }
    current.isTermination = true
  }

  func search(_ word: String) -> Bool {
    if let node = startsWith(word) {
      node.isTermination
    } else {
      false
    }
  }

  func startsWith(_ prefix: String) -> Bool {
    if let _ = startsWith(prefix) {
      true
    } else {
      false
    }
  }

  private func startsWith(_ prefix: String) -> Node? {
    var current = root
    for character in prefix {
      if let node = current.children[character.alphabeticalValue] {
        current = node
      } else {
        return nil
      }
    }
    return current
  }

  private final class Node {
    var children = [Node?](repeating: nil, count: 26)
    var isTermination = false
  }
}

private extension Character {
  var alphabeticalValue: Int {
    Int(asciiValue!-97)
  }
}

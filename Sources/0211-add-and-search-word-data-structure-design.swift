/// https://leetcode.com/problems/add-and-search-word-data-structure-design/
class WordDictionary {
  private let root = Node(" ")

  init() {}

  func addWord(_ word: String) {
    var node = root
    for character in word {
      var child = Node(character)
      (_, child) = node.children.insert(child)
      node = child
    }
    node.children.insert(.termination)
  }

  func search(_ word: String) -> Bool {
    func search(_ node: Node, for substring: Substring) -> Bool {
      guard let character = substring.first else {
        return node.children.firstIndex(of: .termination) != nil
      }

      let nextIndex = substring.index(after: substring.startIndex)
      let nextSubstring = substring.suffix(from: nextIndex)
      let child = Node(character)

      switch character {
      case ".":
        for child in node.children {
          if search(child, for: nextSubstring) {
            return true
          }
        }
        return false
      case _:
        if let index = node.children.firstIndex(of: child) {
          return search(node.children[index], for: nextSubstring)
        } else {
          return false
        }
      }
    }

    return search(root, for: word[word.startIndex ..< word.endIndex])
  }

  private final class Node: Hashable {
    let value: Character
    var children: Set<Node>

    init(_ value: Character) {
      self.value = value
      children = []
    }

    static func == (_ lhs: Node, _ rhs: Node) -> Bool {
      lhs.value == rhs.value
    }

    func hash(into hasher: inout Hasher) {
      hasher.combine(value)
    }

    static var termination: Node {
      Node("-")
    }
  }
}

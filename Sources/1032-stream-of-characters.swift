/// https://leetcode.com/problems/stream-of-characters/
class StreamChecker {
  private var letters: [Character] = []
  private let root = Node(" ")

  init(_ words: [String]) {
    for word in words {
      var node = root
      for character in word.reversed() {
        if let child = node.children[character] {
          node = child
        } else {
          let child = Node(character)
          node.children[character] = child
          node = child
        }
      }
      node.isTermination = true
    }
  }

  func query(_ letter: Character) -> Bool {
    letters.append(letter)

    return search(for: ArraySlice(letters), from: root)
  }

  private func search(for slice: ArraySlice<Character>, from node: Node) -> Bool {
    guard let character = slice.last else {
      return false
    }

    guard let child = node.children[character] else {
      return false
    }

    guard !child.isTermination else {
      return true
    }

    let newSliceCount = slice.count - 1
    let newSlice = slice.prefix(newSliceCount)
    return search(for: newSlice, from: child)
  }
}

private class Node {
  var children: [Character: Node] = [:]
  var isTermination = false

  let character: Character

  init(_ character: Character) {
    self.character = character
  }
}

extension Node: Equatable {
  static func == (_ lhs: Node, _ rhs: Node) -> Bool {
    lhs.character == rhs.character
  }
}

extension Node: Hashable {
  func hash(into hasher: inout Hasher) {
    hasher.combine(character)
  }
}

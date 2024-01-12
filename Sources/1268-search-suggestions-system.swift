/// https://leetcode.com/problems/search-suggestions-system/
struct SearchSuggestionsSystem {
  func suggestedProducts(_ products: [String], _ searchWord: String) -> [[String]] {
    let referenceAsciiValue = ("a" as Character).asciiValue!
    func alphabeticalValue(_ character: Character) -> Int {
      Int(character.asciiValue!-referenceAsciiValue)
    }
    func character(_ alphabeticalValue: Int) -> Character {
      Character(UnicodeScalar(alphabeticalValue+Int(referenceAsciiValue))!)
    }

    let root = Node()
    for product in products {
      var node = root
      for (index, character) in product.enumerated() {
        let alphabeticalValue = alphabeticalValue(character)
        let subnode = node.children[alphabeticalValue] ?? Node()
        subnode.isTermination = subnode.isTermination || index == product.count-1
        node.children[alphabeticalValue] = subnode
        node = subnode
      }
    }

    var suggestions: [[String]] = []
    for prefixCount in 0 ..< searchWord.count {
      let prefix = searchWord.prefix(prefixCount+1)
      var node: Node? = root
      for character in prefix {
        node = node?.children[alphabeticalValue(character)]
      }

      guard let node else {
        suggestions.append([])
        continue
      }

      var newSuggestions: [Substring] = []
      func visit(_ node: Node?, _ context: Substring) {
        guard let node else { return }

        if node.isTermination {
          newSuggestions.append(context)
        }

        for (alphabeticalValue, child) in node.children.enumerated() {
          if let child, newSuggestions.count < 3 {
            visit(child, context+[character(alphabeticalValue)])
          }
        }
      }
      visit(node, prefix)

      suggestions.append(newSuggestions.map(String.init))
    }

    return suggestions
  }

  class Node {
    var children = [Node?](repeating: nil, count: 26)
    var isTermination = false
    init() {}
  }
}

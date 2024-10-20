import Collections

/// https://leetcode.com/problems/reorganize-string/
struct ReorganizeString {
  func reorganizeString(_ s: String) -> String {
    struct Element: Comparable {
      let character: Character
      let count: Int

      static func < (_ lhs: Self, _ rhs: Self) -> Bool {
        guard lhs.count == rhs.count else { return lhs.count < rhs.count }
        return lhs.character < rhs.character
      }
    }

    var counts: [Character: Int] = [:]
    for character in s {
      counts[character, default: 0] += 1
    }

    var heap: Heap<Element> = []
    for (character, count) in counts {
      heap.insert(Element(character: character, count: count))
    }

    var result = ""
    while !heap.isEmpty {
      let element1 = heap.popMax()
      let element2 = heap.popMax()
      guard element1?.character != result.last else { return "" }

      for element in [element1, element2].compactMap({ $0 }) {
        result.append(element.character)

        if element.count > 1 {
          heap.insert(Element(character: element.character, count: element.count-1))
        }
      }
    }

    return result
  }
}

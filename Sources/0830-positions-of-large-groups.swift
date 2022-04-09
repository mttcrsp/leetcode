/// https://leetcode.com/problems/positions-of-large-groups/
struct PositionsOfLargeGroups {
  func largeGroupPositions(_ S: String) -> [[Int]] {
    typealias Group = (character: Character, offset: Int, count: Int)

    var result: [[Int]] = []
    var group: Group?

    for (offset, character) in Array(S).enumerated() {
      switch group {
      case .none:
        group = (character, offset, 1)
      case let .some(g) where g.character == character:
        group?.count += 1
      case let .some(g) where g.count >= 3:
        result.append([g.offset, g.offset + g.count - 1])
        group = (character, offset, 1)
      case .some:
        group = (character, offset, 1)
      }
    }

    if let g = group, g.count >= 3 {
      result.append([g.offset, g.offset + g.count - 1])
    }

    return result
  }
}

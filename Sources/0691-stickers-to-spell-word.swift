/// https://leetcode.com/problems/stickers-to-spell-word/
struct StickersToSpellWord {
  func minStickers(_ stickers: [String], _ target: String) -> Int {
    var targetOccurrences: [Character: Int] = [:]
    var targetCharacters: Set<Character> = []
    for character in target {
      targetOccurrences[character, default: 0] += 1
      targetCharacters.insert(character)
    }

    var stickersOccurrences: [[Character: Int]] = []
    for sticker in stickers {
      var stickerOccurrences: [Character: Int] = [:]
      for character in sticker {
        stickerOccurrences[character, default: 0] += 1
        targetCharacters.remove(character)
      }

      stickersOccurrences.append(stickerOccurrences)
    }

    guard targetCharacters.isEmpty else { return -1 }

    var memo: [[Character: Int]: Int] = [:]
    func visit(_ remainingOccurrences: [Character: Int]) -> Int? {
      guard let randomTargetCharacter = remainingOccurrences.keys.first
      else { return 0 }

      if let result = memo[remainingOccurrences] { return result }

      var minCount: Int?
      for stickerOccurrences in stickersOccurrences {
        guard stickerOccurrences[randomTargetCharacter] != nil else { continue }

        var newRemainingOccurrences: [Character: Int] = [:]
        for (character, remainingCount) in remainingOccurrences {
          let stickerCount = stickerOccurrences[character, default: 0]
          let newRemainingCount = remainingCount-stickerCount
          if newRemainingCount > 0 {
            newRemainingOccurrences[character] = newRemainingCount
          }
        }

        if let result = visit(newRemainingOccurrences) {
          minCount = min(minCount ?? .max, 1+result)
        }
      }

      memo[remainingOccurrences] = minCount
      return minCount
    }

    return visit(targetOccurrences) ?? -1
  }
}

struct FindAndReplaceInString {
  func findReplaceString(_ S: String, _ indexes: [Int], _ sources: [String], _ targets: [String]) -> String {
    var replacements: [Replacement] = []
    for ((index, source), target) in zip(zip(indexes, sources), targets) {
      replacements.append(.init(index: index, source: source, target: target))
    }

    replacements.sort { lhs, rhs in
      lhs.index > rhs.index
    }

    var mutableS = S
    for replacement in replacements {
      let index1 = S.index(S.startIndex, offsetBy: replacement.index)
      let index2 = S.index(index1, offsetBy: replacement.source.count)
      let subrange = index1 ..< index2

      if S[subrange] == replacement.source {
        mutableS.replaceSubrange(subrange, with: replacement.target)
      }
    }
    return mutableS
  }

  private struct Replacement {
    let index: Int
    let source: String
    let target: String
  }
}

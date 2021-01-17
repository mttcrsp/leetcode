struct LongestRepeatingCharacterReplacement {
  func characterReplacement(_ s: String, _ k: Int) -> Int {
    let chars = Array(s)

    var i = 0, max = Int.min, counts: [Character: Int] = [:]
    for j in chars.indices {
      counts[chars[j], default: 0] += 1

      if j - i + 1 - counts.values.max()! > k {
        counts[chars[i], default: 0] -= 1
        i += 1
      }

      max = Swift.max(max, j - i + 1)
    }

    return max == Int.min ? 0 : max
  }
}

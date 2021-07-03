struct ValidAnagram {
  func isAnagram(_ s: String, _ t: String) -> Bool {
    var occurrences: [Character: Int] = [:]
    for character in s {
      occurrences[character, default: 0] += 1
    }

    for character in t {
      guard let count = occurrences[character] else { return false }

      if count == 1 {
        occurrences[character] = nil
      } else {
        occurrences[character] = count - 1
      }
    }

    return occurrences.isEmpty
  }
}

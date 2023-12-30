/// https://leetcode.com/problems/permutation-in-string/
struct PermutationInString {
  func checkInclusion(_ s1: String, _ s2: String) -> Bool {
    var frequencies: [Character: Int] = [:]
    for character in s1 {
      frequencies[character, default: 0] += 1
    }

    next: for var index in s2.indices.dropLast(s1.count-1) {
      var frequencies = frequencies
      for _ in s1.indices {
        defer { index = s2.index(after: index) }
        let character = s2[index]
        if let frequency = frequencies[character], frequency > 0 {
          frequencies[character] = frequency-1
        } else {
          continue next
        }
      }
      return true
    }

    return false
  }
}

/// https://leetcode.com/problems/sentence-similarity-iii/
struct SentenceSimilarityIii {
  func areSentencesSimilar(_ sentence1: String, _ sentence2: String) -> Bool {
    var words1 = ArraySlice(sentence1.split(separator: " "))
    var words2 = ArraySlice(sentence2.split(separator: " "))

    while let lhs = words1.first, let rhs = words2.first, lhs == rhs {
      words1 = words1.dropFirst()
      words2 = words2.dropFirst()
    }

    while let lhs = words1.last, let rhs = words2.last, lhs == rhs {
      words1 = words1.dropLast()
      words2 = words2.dropLast()
    }

    return words1.isEmpty || words2.isEmpty
  }
}

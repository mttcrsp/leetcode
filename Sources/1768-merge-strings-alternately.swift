/// https://leetcode.com/problems/merge-strings-alternately/
struct MergeStringsAlternately {
  func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var result = ""
    var index1 = word1.startIndex
    var index2 = word2.startIndex
    while index1 < word1.endIndex || index2 < word2.endIndex {
      if index1 < word1.endIndex {
        result.append(word1[index1])
        index1 = word1.index(after: index1)
      }
      if index2 < word2.endIndex {
        result.append(word2[index2])
        index2 = word2.index(after: index2)
      }
    }
    return result
  }
}

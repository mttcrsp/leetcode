/// https://leetcode.com/problems/merge-strings-alternately/
struct MergeStringsAlternately {
  func mergeAlternately(_ word1: String, _ word2: String) -> String {
    var i = word1.startIndex
    var j = word2.startIndex
    var result = ""
    while i < word1.endIndex, j < word2.endIndex {
      if i > j {
        result.append(word2[j])
        j = word2.index(after: j)
      } else {
        result.append(word1[i])
        i = word1.index(after: i)
      }
    }

    if i < word1.endIndex {
      result.append(contentsOf: word1[i...])
    } else if j < word2.endIndex {
      result.append(contentsOf: word2[j...])
    }

    return result
  }
}

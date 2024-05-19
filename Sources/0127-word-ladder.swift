import Collections

/// https://leetcode.com/problems/word-ladder/
struct WordLadder {
  func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    var patterns: [[Character]: Set<String>] = [:]
    for word in wordList+[beginWord] {
      for i in 0 ..< word.count {
        var pattern = Array(word)
        pattern[i] = "*"
        patterns[pattern, default: []].insert(word)
      }
    }

    var graph: [String: Set<String>] = [:]
    for (_, wordList) in patterns where wordList.count > 1 {
      for i in wordList.indices {
        for j in wordList.indices where i != j {
          let wordI = wordList[i]
          let wordJ = wordList[j]
          graph[wordI, default: []].insert(wordJ)
          graph[wordJ, default: []].insert(wordI)
        }
      }
    }

    var visited: Set<String> = []
    var queue: Deque<(String, Int)> = [(beginWord, 1)]
    while let (word, length) = queue.popFirst() {
      guard !visited.contains(word) else { continue }
      visited.insert(word)

      if word == endWord {
        return length
      }

      for neighbour in graph[word, default: []] {
        queue.append((neighbour, length+1))
      }
    }

    return 0
  }
}

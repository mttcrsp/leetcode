import Collections

/// https://leetcode.com/problems/word-ladder/
struct WordLadder {
  func ladderLength(_ beginWord: String, _ endWord: String, _ wordList: [String]) -> Int {
    func makePatterns(_ word: String) -> [[Character]] {
      var patterns: [[Character]] = []
      for i in 0 ..< word.count {
        var pattern = Array(word)
        pattern[i] = "*"
        patterns.append(pattern)
      }
      return patterns
    }

    var graph: [[Character]: Set<String>] = [:]
    for word in wordList+[beginWord] {
      for pattern in makePatterns(word) {
        graph[pattern, default: []].insert(word)
      }
    }

    var visited: Set<String> = [beginWord]
    var queue: Deque<(String, Int)> = [(beginWord, 1)]
    while let (word, length) = queue.popFirst() {
      if word == endWord {
        return length
      }

      for pattern in makePatterns(word) {
        for neighbor in graph[pattern, default: []] {
          if !visited.contains(neighbor) {
            visited.insert(neighbor)
            queue.append((neighbor, length+1))
          }
        }
      }
    }

    return 0
  }
}

/// https://leetcode.com/problems/sender-with-largest-word-count/
struct SenderWithLargestWordCount {
  func largestWordCount(_ messages: [String], _ senders: [String]) -> String {
    var counts: [String: Int] = [:]
    for (message, sender) in zip(messages, senders) {
      var wordsCount = message.isEmpty ? 0 : 1
      for character in message {
        if character == " " {
          wordsCount += 1
        }
      }

      counts[sender, default: 0] += wordsCount
    }

    return counts.max { lhs, rhs in
      lhs.value == rhs.value
        ? lhs.key < rhs.key
        : lhs.value < rhs.value
    }!.key
  }
}

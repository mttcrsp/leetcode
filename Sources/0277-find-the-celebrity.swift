import Collections

/// https://leetcode.com/problems/find-the-celebrity/
class FindTheCelebrity {
  func findCelebrity(_ n: Int) -> Int {
    var candidates = Deque(0 ..< n)
    while candidates.count > 1 {
      if knows(candidates.first!, candidates.last!) {
        candidates.removeFirst()
      } else {
        candidates.removeLast()
      }
    }

    let candidateCelebrity = candidates[0]
    for other in 0 ..< n where other != candidateCelebrity {
      if !knows(other, candidateCelebrity) || knows(candidateCelebrity, other) {
        return -1
      }
    }

    return candidateCelebrity
  }

  func knows(_ a: Int, _ b: Int) -> Bool { false }
}

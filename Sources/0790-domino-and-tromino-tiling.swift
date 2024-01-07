/// https://leetcode.com/problems/domino-and-tromino-tiling/
struct DominoAndTrominoTiling {
  func numTilings(_ n: Int) -> Int {
    var buffer = [1, 2, 5]

    guard n > buffer.count
    else { return buffer[n-1] }

    for _ in 0 ..< n-buffer.count {
      let back = buffer[0]
      let prev = buffer[buffer.count-1]
      let next = (2*prev)+back
      buffer.removeFirst()
      buffer.append(next)
      for i in buffer.indices {
        buffer[i] %= 1_000_000_007
      }
    }
    return buffer[buffer.count-1]
  }
}

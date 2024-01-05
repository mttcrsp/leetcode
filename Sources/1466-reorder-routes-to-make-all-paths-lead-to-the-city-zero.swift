/// https://leetcode.com/problems/reorder-routes-to-make-all-paths-lead-to-the-city-zero/
struct ReorderRoutesToMakeAllPathsLeadToTheCityZero {
  func minReorder(_ n: Int, _ connections: [[Int]]) -> Int {
    var unidirectional: [Int: Set<Int>] = [:]
    var bidirectional: [Int: Set<Int>] = [:]
    for connection in connections {
      let src = connection[0]
      let dst = connection[1]
      unidirectional[src, default: []].insert(dst)
      bidirectional[src, default: []].insert(dst)
      bidirectional[dst, default: []].insert(src)
    }

    var frontier = [0]
    var visited: Set<Int> = []
    var result = 0
    while !frontier.isEmpty {
      let src = frontier.removeFirst()
      visited.insert(src)

      for dst in bidirectional[src, default: []] {
        if !visited.contains(dst) {
          frontier.append(dst)
          if !unidirectional[dst, default: []].contains(src) {
            result += 1
          }
        }
      }
    }

    return result
  }
}

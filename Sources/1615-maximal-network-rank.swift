/// https://leetcode.com/problems/maximal-network-rank/
struct MaximalNetworkRank {
  func maximalNetworkRank(_ n: Int, _ roads: [[Int]]) -> Int {
    var graph: [Int: Set<Int>] = [:]
    for road in roads {
      graph[road[0], default: []].insert(road[1])
      graph[road[1], default: []].insert(road[0])
    }

    var result = 0
    for i in 0 ..< n-1 {
      for j in i+1 ..< n {
        var rank = graph[i, default: []].contains(j) ? -1 : 0
        rank += graph[i, default: []].count
        rank += graph[j, default: []].count
        result = max(result, rank)
      }
    }

    return result
  }
}

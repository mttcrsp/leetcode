import Collections

/// https://leetcode.com/problems/bus-routes/
struct BusRoutes {
  func numBusesToDestination(_ routes: [[Int]], _ source: Int, _ target: Int) -> Int {
    guard source != target else { return 0 }

    let routes = routes.map(Set.init)

    var adjacencyList: [Int: Set<Int>] = [:]
    for i in 0 ..< routes.count-1 {
      for j in i+1 ..< routes.count {
        if !routes[i].isDisjoint(with: routes[j]) {
          adjacencyList[i, default: []].insert(j)
          adjacencyList[j, default: []].insert(i)
        }
      }
    }

    var frontier: Deque<(Int, Int)> = []
    for (id, route) in routes.enumerated() {
      if route.contains(source) {
        frontier.append((id, 1))
      }
    }

    var visited: Set<Int> = []
    while let (id, distance) = frontier.popFirst() {
      guard !visited.contains(id) else { continue }
      visited.insert(id)

      if routes[id].contains(target) {
        return distance
      }

      for next in adjacencyList[id, default: []] {
        frontier.append((next, distance+1))
      }
    }

    return -1
  }
}

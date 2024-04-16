/// https://leetcode.com/problems/number-of-provinces/
struct NumberOfProvinces {
  func findCircleNum(_ isConnected: [[Int]]) -> Int {
    var adj: [Int: Set<Int>] = [:]
    for i in isConnected.indices {
      for j in isConnected[i].indices where i != j {
        if isConnected[j][i] == 1 {
          adj[i, default: []].insert(j)
          adj[j, default: []].insert(i)
        }
      }
    }

    var visited: Set<Int> = []
    var provinces = 0
    for city in isConnected.indices {
      guard !visited.contains(city) else { continue }
      provinces += 1

      var queue: Set<Int> = [city]
      while let city = queue.popFirst() {
        visited.insert(city)

        for neighbour in adj[city, default: []] {
          guard !visited.contains(neighbour) else { continue }
          queue.insert(neighbour)
        }
      }
    }

    return provinces
  }
}

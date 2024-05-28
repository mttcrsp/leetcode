/// https://leetcode.com/problems/all-paths-from-source-to-target/
struct AllPathsFromSourceToTarget {
  func allPathsSourceTarget(_ graph: [[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    var path: [Int] = []
    func visit(_ node: Int = 0) {
      path.append(node)
      defer { path.removeLast() }

      if node == graph.count-1 {
        result.append(path)
        return
      }

      for neighbor in graph[node] {
        visit(neighbor)
      }
    }

    visit()
    return result
  }
}
